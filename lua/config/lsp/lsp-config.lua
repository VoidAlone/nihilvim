vim.lsp.enable({
    'lua_ls',
    'ccls',
    'pyright',
})

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
    -- Add other options here
})
