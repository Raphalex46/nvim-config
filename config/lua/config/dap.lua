local dap = require("dap")

-- Adapters
dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = {"-i", "dap"}
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

-- Mappings and sidebar stuff
local widgets = require('dap.ui.widgets')
local frames = widgets.sidebar(widgets.frames)
local scope = widgets.sidebar(widgets.scopes)

vim.keymap.set('n', '<Leader>df', function() frames.toggle() end, {})
vim.keymap.set('n', '<Leader>ds', function() scope.toggle() end, {})
vim.keymap.set('n', '<Leader>dp', function() widgets.preview() end, {})
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F6>', function() require('dap').repl.toggle() end)
vim.keymap.set('n', '<F9>', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)

-- Loading the launch.json
require('dap.ext.vscode').load_launchjs("launch.json", { gdb = { 'c', 'cpp' }, lldb = {'c', 'cpp'} })
