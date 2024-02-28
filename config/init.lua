-- Set map leader
vim.g.mapleader = " "

-- Load various options
require('options')
-- Load plugins
require('vim-plug')
-- Load plugin configurations
require('config')
-- Load custom commands
require('commands')
-- Load custom mappings
require('mappings')
-- Load colorscheme
require('colorscheme')

--  Rebind insert mode exit
vim.keymap.set('i', 'jj', '<Esc>')
--  Arrow keys are used to change window size
vim.keymap.set('n', '<Left>', ':5wincmd <<CR>')
vim.keymap.set('n', '<Right>', ':5wincmd ><CR>')
vim.keymap.set('n', '<Up>', ':5wincmd +<CR>')
vim.keymap.set('n', '<Down>', ':5wincmd -<CR>')
--  Ctrl + arrow keys allows to rotate windows
vim.keymap.set('n', '<C-Up>', '<C-W>R')
vim.keymap.set('n', '<C-Down>', '<C-W>r')
vim.keymap.set('n', '<C-Left>', '<C-W>x')
vim.keymap.set('n', '<C-Right>', '<C-W>x')

--  To use `ALT+{h,j,k,l}` to navigate windows from any mode: >
vim.keymap.set('t', '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set('t', '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set('t', '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set('t', '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set('i', '<A-h>', '<C-\\><C-n><C-w>h')
vim.keymap.set('i', '<A-j>', '<C-\\><C-n><C-w>j')
vim.keymap.set('i', '<A-k>', '<C-\\><C-n><C-w>k')
vim.keymap.set('i', '<A-l>', '<C-\\><C-n><C-w>l')
vim.keymap.set('i', '<A-p>', '<C-\\><C-n><C-w>P')
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')
vim.keymap.set('n', '<A-p>', '<C-w>P')

--  To map <Esc> to exit terminal-mode: >
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')



--  Switch between header / source (depends on clangd)
vim.keymap.set('n', '<leader>ss :<C-u>CocCommand', 'clangd.switchSourceHeader<CR>')

--  show definition in preview window
vim.keymap.set('n', '<leader>pd :pedit<CR>:wincmd P<CR>:norm', 'gd<CR>')

-- """ Bindings """"

--  Tagbar
vim.keymap.set({ 'n', 'v', 'o' }, '<F2>', ':TagbarToggle <CR>')
