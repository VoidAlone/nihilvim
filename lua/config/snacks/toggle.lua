local sn = require('snacks')
local wk = require('which-key')
wk.add({
    { '<leader>t', group = 'Zen Group' },
    { '<leader>tz', sn.toggle.zen, desc='Toggle Zen Mode' },
})
