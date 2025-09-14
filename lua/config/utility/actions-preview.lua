local wk = require('which-key')
local ap = require('actions-preview')
wk.add({
    {'<leader>fa', ap.code_actions, desc="Actions Preview"}
})
