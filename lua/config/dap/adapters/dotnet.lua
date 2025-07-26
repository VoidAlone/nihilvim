local dap = require('dap')

dap.adapters.netcoredbg = {
  id = 'netcoredbg',
  type = 'executable',
  command = 'netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = 'coreclr',
    name = 'Launch - NetCoreDbg',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net9.0/', 'file')
    end,
  },
}

dap.configurations.fs = {

}
