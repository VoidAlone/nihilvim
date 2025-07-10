local builtin = require('telescope.builtin')
local wk = require('which-key')
wk.add({
    {'<leader>f', group = 'telescope'},
    {'<leader>ff', builtin.find_files, desc = 'Telescope find files'},
    {'<leader>fg', builtin.live_grep, desc = 'Telescope live grep'},
    {'<leader>fb', builtin.buffers, desc = 'Telescope buffers'},
    {'<leader>fh', builtin.help_tags, desc = 'Telescope help tags'},
})
