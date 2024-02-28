require('mappings.general')
require('mappings.tagbar')
require('mappings.coc')
require('mappings.gitgutter')

--  Switch between header / source (depends on clangd)
vim.keymap.set('n', '<leader>ss :<C-u>CocCommand', 'clangd.switchSourceHeader<CR>')

--  show definition in preview window
vim.keymap.set('n', '<leader>pd :pedit<CR>:wincmd P<CR>:norm', 'gd<CR>')
