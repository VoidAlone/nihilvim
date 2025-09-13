local sn  = require('snacks')
local zen = require('zen-mode')
local twi = require('twilight')
local wk  = require('which-key')
wk.add({
    {'<leader>t', group = 'toggle'},
    {'<leader>tz', function() zen.toggle() end, desc='Toggle Zen Mode'},
    {'<leader>tt', function() twi.toggle() end, desc='Toggle Twilight'},
    {'<leader>txx', "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)"},
    {"<leader>txX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)"},
    {"<leader>tcs", "<cmd>Trouble symbols toggle focus=false win.position=left<cr>", desc = "Symbols (Trouble)"},
    {"<leader>tcl", "<cmd>Trouble lsp toggle focus=false win.position=left<cr>", desc = "LSP Definitions / references / ... (Trouble)"},
    {"<leader>txL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)"},
    {"<leader>txQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)"},
})
