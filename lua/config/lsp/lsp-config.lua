local home = vim.fn.expand("~")
local target = home .. "/.local/lib/MicrosoftLanguageServer/content/LanguageServer/linux-x64/"

vim.lsp.config("ltex-ls", {
    cmd = {'ltex-ls'},
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

vim.lsp.config("roslyn", {
    cmd = {
        "dotnet",
        target .. "Microsoft.CodeAnalysis.LanguageServer.dll",
        "--logLevel=Information",
        "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
        "--stdio",
    },
    root_dir = vim.fs.dirname(vim.fs.find({ "*.csproj", "*.sln" }, { upward = true,})[1]),
    filetypes = {'cs'},
    -- Add other options here
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
--     --experimental-modules-support
--     cmd = {'/home/linuxbrew/.linuxbrew/bin/clangd', '--background-index', '--clang-tidy', '--log=verbose', '--pretty'},
--     root_dir = vim.fs.dirname(vim.fs.find({'compile_commands.json', '.git'}, {upward = true})[1]),
--     filetypes = {'c', 'cpp', 'h', 'hpp', 'ixx', 'cppm'},
-- })

vim.lsp.config('jsonls', {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
})

vim.lsp.enable({
    'lua_ls',
    'roslyn',
    'godot',
    'clangd',
    'jsonls',
    'pyright',
    'ltex_plus',
})
