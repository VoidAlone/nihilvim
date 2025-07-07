require("conform").setup({
  formatters_by_ft = {
    c = {"clang_format"},
    cpp = {"clang_format"},
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- You can customize some of the format options for the filetype (:help conform.format)
    rust = { "rustfmt", lsp_format = "fallback" },
    -- Conform will run the first available formatter
    javascript = { "prettierd", "prettier", stop_after_first = true },
  },
  formatters = {
    clang_format = {
      prepend_args = {
        "--style={BasedOnStyle: Allman, IndentWidth: 4, BreakBeforeBraces: Allman}"    
      }
    }
  }
})
