vim.diagnostic.config({
  virtual_text = {
    enable = true,
    spacing = 4,
    prefix = "●", -- could also be "●", "■", "▎"
    severity = nil,
    source = "if_many", -- or "always"
  },
  -- virtual_lines = true, -- set to true if you prefer virtual lines over text
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚 ",
            [vim.diagnostic.severity.WARN] = "󰀪 ",
            [vim.diagnostic.severity.INFO] = "󰋽 ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    source = "if_many", -- or "always"
    border = "rounded",
    header = "",
    prefix = "",
  },
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})


