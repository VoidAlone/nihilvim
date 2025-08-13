local home = vim.fn.expand("~")
local target = home .. "/Repos/AltRepos/MicrosoftLanguageServer/content/LanguageServer/linux-x64"
vim.lsp.config("roslyn", {
    cmd = {
        "dotnet",
        target .. "/Microsoft.CodeAnalysis.LanguageServer.dll",
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
        vim.fn.serverstart(pipe)
    end
})

vim.lsp.enable({
    'lua_ls',
    'ccls',
    'pyright',
    'godot',
})
