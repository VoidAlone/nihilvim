return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = { 'OXY2DEV/markview.nvim' },
  lazy = false,
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
  },
}

