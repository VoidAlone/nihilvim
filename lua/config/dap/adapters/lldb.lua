local dap = require("dap")

dap.adapters["lldb-dap"] = {
    name = 'lldb',
    type = "executable",
    command = vim.fn.exepath("lldb-dap")
}

local function lldb_general_config(name)
    return{
        name = name,
        type = "lldb-dap",
        request = "launch",
        program = function()
            local path = vim.fn.input({
                prompt = 'Path to executable: ',
                default = vim.fn.getcwd() .. '/',
                completion = 'file',
            })
            return path
        end,
        cwd = "${workspaceFolder}",
        console = 'integratedTerminal',
        -- stopOnEntry = false,
        -- console = 'integratedTerminal',
        -- console = 'internalConsole',
    }
end

dap.configurations.c = {
    lldb_general_config('Launch C (lldb)')
}

dap.configurations.cpp = {
    lldb_general_config('Launch C++ (lldb)')
}

dap.configurations.rust = {
    lldb_general_config('Launch Rust (lldb)')
}
