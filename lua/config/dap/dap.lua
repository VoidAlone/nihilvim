vim.fn.sign_define('DapBreakpoint',{ text ='🔴', texthl ='', linehl ='', numhl =''})
vim.fn.sign_define('DapStopped',{ text ='▶️', texthl ='', linehl ='', numhl =''})
local wk = require('which-key')
local dap = require('dap')
local dv = require('dap-view')
-- local dapui = require('dapui')
-- vim.keymap.set("n", "<F5>", require("dap").continue, {desc = "Continue"})
-- vim.keymap.set("n", "<F10>", require("dap").step_over, {desc = "Step Over"})
-- vim.keymap.set("n", "<F11>", require("dap").step_into, {desc = "Step Into"})
-- vim.keymap.set("n", "<F12>", require("dap").step_out, {desc = "Step Out"})
-- vim.keymap.set("n", "<Leader>db", require("dap").toggle_breakpoint, {desc = "Toggle Breakpoint"})
-- vim.keymap.set("n", "<Leader>de", require("dap").repl.open, {desc = "Open REPL"})
-- vim.keymap.set("n", "<Leader>dl", require("dap").run_last, {desc = "Run Last"})

wk.add({
    { '<leader>1',                          group = 'debug'         },
    { '<leader>1b', dap.toggle_breakpoint,  desc = 'Set Breakpoint' },
    { '<leader>1r', dap.repl.open,          desc = 'Open REPL'      },
    { '<F1>',       dap.continue,           desc = 'Start/Continue' },
    { '<F2>',       dap.step_into,          desc = 'Step Into'      },
    { '<F3>',       dap.step_over,          desc = 'Step Over'      },
    { '<F4>',       dap.step_out,           desc = 'Step Out'       },
    { '<F5>',       dap.close,              desc = 'Stop'           },
    { '<leader>1u', dv.toggle,              desc = 'Toggle UI'      },
    -- { '<F6>',       dapui.toggle,           desc = 'Toggle UI'},
})
