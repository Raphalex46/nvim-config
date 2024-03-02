do
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
end
