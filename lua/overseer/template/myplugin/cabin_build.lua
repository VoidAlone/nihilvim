return {
    name = "Cabin Build",
    builder = function()
        return {
            cmd = { "cabin" },
            args = { 'build' },
            components = { { "on_output_quickfix", open = true }, "default" },
        }
    end,
    condition = {
        callback = function()
            return vim.fn.filereadable('cabin.toml') == 1
        end,
    },
}
