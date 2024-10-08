do
  -- Telescope key mappings
  local builtin = require('telescope.builtin')
  local actions = require('telescope.actions')
  local extensions = require('telescope').extensions
  vim.keymap.set('n', '<Leader>ff', builtin.find_files, {})
  vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
  vim.keymap.set('n', '<Leader>fo', builtin.oldfiles, {})
  vim.keymap.set('n', '<Leader>fm', builtin.marks, {})
  -- Custom mapping for the buffer picker (press d to delete a buffer)
  vim.keymap.set('n', '<Leader>b', function()
    builtin.buffers{
      attach_mappings = function(_, map)
        map("n", "d", actions.delete_buffer)
        return true
      end
    }
  end, {})
  vim.keymap.set('n', '<Leader>sd', extensions.coc.document_symbols, {})
  vim.keymap.set('n', '<Leader>sw', extensions.coc.workspace_symbols, {})
  vim.keymap.set('n', '<Leader>cd', extensions.coc.diagnostics, {})
  vim.keymap.set('n', '<Leader>fb', extensions.file_browser.file_browser, {})

  -- Mappings for LSP stuff
  vim.keymap.set('n', '<Leader>lr', builtin.lsp_references)
  vim.keymap.set('n', '<Leader>ld', builtin.diagnostics)
  vim.keymap.set('n', '<Leader>ls', builtin.lsp_workspace_symbols)
  vim.keymap.set('n', '<Leader>lb', builtin.lsp_document_symbols)
  vim.keymap.set('n', 'gd', builtin.lsp_definitions)
end
