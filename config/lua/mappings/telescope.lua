do
  -- Telescope key mappings
  local builtin = require('telescope.builtin')
  local extensions = require('telescope').extensions
  vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
  vim.keymap.set('n', '<leader>fm', builtin.marks, {})
  vim.keymap.set('n', '<leader>b', builtin.buffers, {})
  vim.keymap.set('n', '<leader>sd', extensions.coc.document_symbols, {})
  vim.keymap.set('n', '<leader>sw', extensions.coc.workspace_symbols, {})
  vim.keymap.set('n', '<leader>cd', extensions.coc.diagnostics, {})
  vim.keymap.set('n', '<leader>fb', extensions.file_browser.file_browser, {})
end
