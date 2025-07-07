return {
    "mfussenegger/nvim-dap",
    dependencies = {
        {'igorlfs/nvim-dap-view', opts = {
            auto_toggle = true,
            winbar = {
                sections = {'watches', 'scopes', 'exceptions', 'breakpoints', 'threads', 'repl', 'console'},
                headers = {
                    breakpoints = "Breakpoints [B]",
                    scopes = "Scopes [S]",
                    exceptions = "Exceptions [E]",
                    watches = "Watches [W]",
                    threads = "Threads [T]",
                    repl = "REPL [R]",
                    console = "Console [C]",
                }
            }
        }}
    },
    config = function()
        require('overseer').enable_dap()
    end,
}
