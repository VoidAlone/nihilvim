vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false 
vim.opt.smartindent = false
vim.opt.autoindent = false
vim.opt.cindent = false 
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.showcmd = true

-- vim.opt.virtualedit = "onemore"

-- vim.api.nvim_create_autocmd({'FileType'}, {
--     pattern = '*',
--     callback = function()
--         --SOFTWRAP
--         vim.opt_local.wrap = true
--         vim.opt_local.linebreak = true
--         vim.opt_local.breakat=" "
--         vim.opt_local.breakindent = true
--         vim.opt_local.showbreak = "↪ "
--
--         -- HARDWRAP
--         -- vim.opt.textwidth = 80
--         -- vim.opt.formatoptions:append('t')
--     end
-- })

