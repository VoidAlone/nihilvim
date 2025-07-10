local header_file = vim.fn.stdpath("config") .. "/lua/config/themes/headers2.txt"

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  bigfile = {
    enabled = true,
    line_length = 1500,
  },
  dashboard = {
    enabled = true,
    sections = {
      {
        section = "terminal",
        -- cmd = "lolcat -b " .. vim.fn.stdpath('config') .. "/lua/config/themes/headers2.txt",
        -- cmd = "cat " .. vim.fn.stdpath("config") .. "/lua/config/themes/dash_neovim.txt",
        cmd = 'lolcat -f -b -g 6c17b6:ff5e00 ' .. header_file,
        pty = false,
        indent = -5,
        height = 8,
        width = 69,
        padding = 1,
      },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
    },
  },
  explorer = { enabled = true },
  indent = { enabled = true},
  input = {
    enabled = true,
  },
  picker = { enabled = true },
  notifier = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
  },
}
