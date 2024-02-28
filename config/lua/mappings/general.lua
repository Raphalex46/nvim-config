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

-- Use <C-j> and <C-k> to navigate buffers
vim.keymap.set('n', '<C-j>', ':bp <CR>', { silent = true })
vim.keymap.set('n', '<C-k>', ':bn <CR>', { silent = true })
