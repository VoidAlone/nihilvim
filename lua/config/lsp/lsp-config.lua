-- To add roslyn_ls support, you need to install roslyn with the following command
-- dotnet tool install --global roslyn-language-server --prerelease


local home = vim.fn.expand("~")
local target = home .. "/.local/lib/MicrosoftLanguageServer/content/LanguageServer/linux-x64/"

vim.lsp.config("ltex_plus", {
    cmd = {'ltex-ls-plus'},
    filetypes = {'markdown', 'text', 'tex', 'gitcommit'},
    root_dir = vim.fs.dirname(vim.fs.find({'.git'}, {upward = true})[1]),
    settings = {
        ltex = {
            language = 'en-US',
            completionEnabled = true,
            additionalRules = {
                enablePickyRules = true,

            },
        },
    },
    flags = { debounce_text_changes = 500, },
})

local cmd = vim.lsp.rpc.connect('127.0.0.1', 6005)
local pipe = '/tmp/godot.pipe'
vim.lsp.config('godot', {
    cmd = cmd,
    root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
    filetypes = {'gdscript', 'gdshader'},
    on_attach = function(client, bufnr)
        if vim.fn.exists('v:servername') == 0 then
            vim.fn.serverstart(pipe)
        end
    end
})

-- '--experimental-modules-support',
-- vim.lsp.config('clangd', {
--     --experimental-modules-support,
--     cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose', '--pretty'},
--     root_dir = vim.fs.dirname(vim.fs.find({'compile_commands.json', '.git'}, {upward = true})[1]),
--     filetypes = {'c', 'cpp', 'h', 'hpp', 'ixx', 'cppm', 'tpp'},
-- })

vim.lsp.config('jsonls', {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
})

vim.lsp.config('nimlangserver', {
    cmd = { vim.fn.expand("~/.nimble/bin/nimlangserver")},
    filetypes = {"nim"},
})

vim.lsp.enable({
    'clangd',
    'godot',
    'jsonls',
    'ltex_plus',
    'lua_ls',
    'nimlangserver',
    'pyright',
    'roslyn_ls',
})
