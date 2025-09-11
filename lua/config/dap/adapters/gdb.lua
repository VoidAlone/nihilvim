local dap = require('dap')

dap.adapters.gdb = {
    id = 'gdb',
    type = 'executable',
    command = 'gdb',
    args = {'--interpreter=dap', },
}

local function gdb_general_config(name)
    return{
        name = name,
        type = 'gdb',
        request = 'launch',
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
        setupCommands = {
            text = '-enable-pretty-printing',
            ignoreFailures = false,
        }
    }
end

dap.configurations.c = {
    gdb_general_config('Launch C (GDB)')
}

dap.configurations.cpp = {
    gdb_general_config('Launch C++ (GDB)')
}

dap.configurations.rust = {
    gdb_general_config('Launch Rust (GDB)')
}

dap.configurations.ada = {
    gdb_general_config('Launch Ada (GDB)')
}
