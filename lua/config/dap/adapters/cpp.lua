local dap = require('dap')

dap.adapters.gdb = {
    id = 'gdb',
    type = 'executable',
    command = 'gdb',
    args = {'--interpreter=dap', '--eval-command', 'set print pretty on',},
}

dap.configurations.cpp = {
    {
        name = 'Run Executable (GDB)',
        type = 'gdb',
        request = 'launch',
        --function to get the executable to run
        program = function()
            local path = vim.fn.input({
                prompt = 'Path to executable: ',
                default = vim.fn.getcwd() .. '/',
                completion = 'file',
            })
            return path
        end,
        cwd = '${workspaceFolder}',
        stopAtBeginningOfMainSubprogram = false,
    },
}
