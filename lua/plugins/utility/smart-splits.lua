return{
  'mrjones2014/smart-splits.nvim',
  version = '>=1.0.0',
  config = function()
    require('smart-splits').setup({
      at_edge = 'wrap', -- wrap cursor around edges
      default_amount = 3, -- resize step
      ignored_filetypes = { 'NvimTree', 'neo-tree', 'Outline' },
    })

    local ss = require('smart-splits')
    -- Movement
    vim.keymap.set('n', '<C-h>', ss.move_cursor_left)
    vim.keymap.set('n', '<C-j>', ss.move_cursor_down)
    vim.keymap.set('n', '<C-k>', ss.move_cursor_up)
    vim.keymap.set('n', '<C-l>', ss.move_cursor_right)

    -- Resize (Alt/Meta)
    vim.keymap.set('n', '<A-h>', ss.resize_left)
    vim.keymap.set('n', '<A-j>', ss.resize_down)
    vim.keymap.set('n', '<A-k>', ss.resize_up)
    vim.keymap.set('n', '<A-l>', ss.resize_right)
  end,
}
