return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = {
        sections = {
            {
                section = "terminal",
                cmd = "lolcat -b ~/.config/nvim-nihilvim/lua/config/themes/headers2.txt",
                height = 15,
                width = 100,
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
