local dap = require("dap")

-- Adapters
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" }
}

dap.adapters.lldb = {
  type = "executable",
  command = "lldb-dap",
  name = "lldb"
}

-- C configuration
-- Default "Launch" configuration asks for the executable file
dap.configurations.c = {
  {
    name = "Launch",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
    stopAtBeginningOfMainSubprogram = false,
  },
}

dap.configurations.cpp = dap.configurations.c

-- Loading the launch.json
require('dap.ext.vscode').load_launchjs("launch.json", { gdb = { 'c', 'cpp' }, lldb = { 'c', 'cpp' } })
