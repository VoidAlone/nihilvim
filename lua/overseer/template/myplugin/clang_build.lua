return {

    name = "clang++ build",
    builder = function()
        local file = vim.fn.expand("%:p")
        return {
            cmd = { "clang++" },
            args = { file, "-g", "-std=c++20" }, -- add flags you like
            components = {
                { "on_output_quickfix", open = true },
                "default",
            },
        }
    end,
    condition = {
        filetype = { "cpp", "cxx", "cc" },
    }
}
