require('mappings.general')
require('mappings.tagbar')
require('mappings.neotree')
require('mappings.gitgutter')
require('mappings.telescope')
require('mappings.dap')
require('mappings.sessions')
require('mappings.terminal')
require('mappings.lsp')

--  show definition in preview window
vim.keymap.set('n', '<Leader>pd :pedit<CR>:wincmd P<CR>:norm', 'gd<CR>')
