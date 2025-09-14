vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.showcmd = true

vim.api.nvim_create_autocmd({'FileType'}, {
    pattern = '*',
    callback = function()
        --SOFTWRAP
        -- vim.opt.wrap = true
        -- vim.opt.linebreak = true
        -- vim.opt.breakat=" "
        -- vim.opt.showbreak = "↪ "

        -- HARDWRAP
        vim.opt.textwidth = 80
        vim.opt.formatoptions:append('t')
    end
})

