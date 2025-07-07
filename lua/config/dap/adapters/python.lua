local dap = require("dap")
require("dap-python").setup("uv")

dap.configurations.python = 
{
    {
        type = 'python';
        request = 'launch';
        name = "Python Launch File";
        program = "${file}";
    },
}

