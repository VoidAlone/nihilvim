return {
    "mfussenegger/nvim-dap",
    dependencies = {
        {'igorlfs/nvim-dap-view', opts = {
            auto_toggle = true,
            winbar = {
                sections = {'watches', 'scopes', 'exceptions', 'breakpoints', 'threads', 'repl', 'disassembly', 'console'},
                default_section = 'scopes',
            }
        }}
    },
    config = function()
        require('overseer').enable_dap()
    end,
}
