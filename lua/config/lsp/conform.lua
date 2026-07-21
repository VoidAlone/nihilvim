local wk = require("which-key")
local cf = require("conform")
cf.setup({
	formatters_by_ft = {
		-- markdown = { "mdformat" },
		c = { "clang_format" },
		cpp = { "clang_format" },
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- You can customize some of the format options for the filetype (:help conform.format)
		rust = { "rustfmt", lsp_format = "fallback" },
		-- Conform will run the first available formatter
		cs = { lsp_format = "prefer" },

		html = { "prettierd", "prettier", stop_after_first = true },
		css = { "prettierd", "prettier", stop_after_first = true },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		markdown = { "prettierd", "prettier", stop_after_first = true },
	},
	formatters = {
		clang_format = {
			prepend_args = {
				"--style={AlignAfterOpenBracket: Align, AllowShortFunctionsOnASingleLine: All, BasedOnStyle: Google, IndentWidth: 4, BreakBeforeBraces: Allman}",
			},
		},
	},
})

wk.add({
	{
		"<leader>cf",
		function()
			cf.format({ async = false, lsp_format = "prefer", })
		end,
		desc = "Format Buffer",
	},
})
