-- Setup for extensions
require('telescope').setup({
  defaults = {
    initial_mode = 'normal'
  },
  extensions = {
    coc = {
        theme = 'ivy',
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    },
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {}
    }
  },
})
require('telescope').load_extension('coc')
require('telescope').load_extension('ui-select')
require('telescope').load_extension('file_browser')

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
