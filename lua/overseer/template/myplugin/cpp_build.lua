return {
    name = "g++ build",
    builder = function()
        -- Full path to current file (see :help expand())
        local file = vim.fn.expand("%:p")
        return {
            cmd = { "g++" },
            args = { file , '-g'},
            components = { { "on_output_quickfix", open = true }, "default" },
        }
    end,
    condition = {
        filetype = { "cpp" },
    },
}
