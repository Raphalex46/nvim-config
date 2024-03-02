require('mappings.general')
require('mappings.tagbar')
require('mappings.neotree')
require('mappings.gitgutter')

--  show definition in preview window
vim.keymap.set('n', '<leader>pd :pedit<CR>:wincmd P<CR>:norm', 'gd<CR>')
