return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
      preset = "helix",
    -- preset = "modern",
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = true })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
