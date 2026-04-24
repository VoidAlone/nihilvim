local ts = require'nvim-treesitter'

ts.install{
        "ada",
        "bash",
        "c",
        "c_sharp",
        "cmake",
        "cpp",
        "css",
        "csv",
        "d",
        "diff",
        "doxygen",
        "fortran",
        "fsharp",
        "gdscript",
        "go",
        "html",
        "javascript",
        "json",
        "latex",
        "markdown",
        "markdown_inline",
        "nim",
        "python",
        "rust",
        "regex",
        "xml",
        "yaml",
        "zig",
}


-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'tpp' },
--   callback = function() vim.treesitter.start() end,
-- })
