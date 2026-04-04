local M = {}

local config = {
    column = 80,
    marker = "↳",
}

local ns_id = vim.api.nvim_create_namespace("virtualwrap")

local function get_wrap_col()
    local win_width = vim.api.nvim_win_get_width(0)
    return math.min(config.column, win_width)
end

local function get_line_length(row)
    local line = vim.api.nvim_buf_get_lines(0, row - 1, row, false)[1]
    return line and #line or 0
end

local function move_down_once()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local wrap = get_wrap_col()
    local len = get_line_length(row)

    if col + wrap < len then
        vim.api.nvim_win_set_cursor(0, {row, col + wrap})
    else
        local next_row = math.min(row + 1, vim.api.nvim_buf_line_count(0))
        vim.api.nvim_win_set_cursor(0, {next_row, col})
    end
end

local function move_up_once()
    local row, col = unpack(vim.api.nvim_win_get_cursor(0))
    local wrap = get_wrap_col()

    if col >= wrap then
        vim.api.nvim_win_set_cursor(0, {row, col - wrap})
    else
        local prev_row = math.max(row - 1, 1)
        vim.api.nvim_win_set_cursor(0, {prev_row, col})
    end
end

function M.down()
    local count = vim.v.count1
    for _ = 1, count do
        move_down_once()
    end
end

function M.up()
    local count = vim.v.count1
    for _ = 1, count do
        move_up_once()
    end
end

local function clear_virtual_text()
    local buf = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_clear_namespace(buf, ns_id, 0, -1)
end

local function render_line(line_num, wrap_at)
    local line = vim.api.nvim_buf_get_lines(0, line_num - 1, line_num, false)[1]
    if not line or #line == 0 then
        return {}
    end

    local line_len = #line
    if line_len <= wrap_at then
        return {}
    end

    local marker = config.marker

    return {
        {
            id = 1,
            col = wrap_at,
            virt_text = {{marker, "Comment"}},
            virt_text_pos = "overlay",
            virt_text_hide = false,
        }
    }
end

function M.render()
    local buf = vim.api.nvim_get_current_buf()
    local wrap_at = get_wrap_col()

    clear_virtual_text()

    local ok, buf_lines = pcall(vim.api.nvim_buf_get_lines, buf, 0, -1, false)
    if not ok or not buf_lines then
        return
    end

    local start_row = vim.fn.line("w0") - 1
    local end_row = vim.fn.line("w$")

    for i = start_row, end_row do
        local extmarks = render_line(i + 1, wrap_at)
        for _, extmark in ipairs(extmarks) do
            vim.api.nvim_buf_set_extmark(buf, ns_id, i, extmark.col, {
                virt_text = extmark.virt_text,
                virt_text_pos = extmark.virt_text_pos,
            })
        end
    end
end

local render_timer = nil
local function schedule_render()
    if render_timer then
        render_timer:close()
    end
    render_timer = vim.defer_fn(function()
        render_timer = nil
        M.render()
    end, 50)
end

function M.setup(opts)
    config = vim.tbl_extend("force", config, opts or {})

    vim.opt.wrap = false
    vim.opt.virtualedit = "all"

    vim.keymap.set("n", "j", M.down, { desc = "Virtual wrap down" })
    vim.keymap.set("n", "k", M.up, { desc = "Virtual wrap up" })

    local group = vim.api.nvim_create_augroup("virtualwrap", { clear = true })

    vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI", "BufEnter", "WinScrolled" }, {
        group = group,
        callback = schedule_render,
    })

    vim.api.nvim_create_autocmd({ "WinResized" }, {
        group = group,
        callback = function()
            schedule_render()
        end,
    })

    vim.api.nvim_create_autocmd({ "BufLeave" }, {
        group = group,
        callback = clear_virtual_text,
    })

    vim.api.nvim_create_autocmd({ "VimEnter", "BufReadPost" }, {
        group = group,
        callback = function()
            vim.defer_fn(function()
                M.render()
            end, 100)
        end,
    })
end

return M
