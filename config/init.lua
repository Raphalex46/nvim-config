-- Map leader
vim.g.mapleader = " "

-- Include some scripts:

-- Plugin script
require('config.vim-plug')
-- Coc script (autocomplete and LSP)
vim.cmd('source ~/vimscripts/coc.vim')
-- Bufferline configuration
vim.cmd('source ~/vimscripts/bufferline.vim')
--  vim tasks
vim.cmd('source ~/vimscripts/tasks.vim')
--  filetype specificities
vim.cmd('source ~/vimscripts/filetypes.vim')
--  azerty keyboard specific mappings
require('config.azerty')
--  Git Gutter
vim.cmd('source ~/vimscripts/gitgutter.vim')
--  NERDTree
vim.cmd('source ~/vimscripts/nerdtree.vim')
--  Tagbar
vim.cmd('source ~/vimscripts/tagbar.vim')
--  Buffers
vim.cmd('source ~/vimscripts/buffers.vim')
--  Status line
require('config.lualine')
--  Devicons
require('config.devicons')
--  Telescope
require('config.telescope')
--  Greeter
require('config.alpha')
--  Sessions
require('config.sessions')
--  Vimwiki
vim.cmd('source ~/vimscripts/vimwiki.vim')
--  Integrated terminal
vim.cmd('source ~/vimscripts/terminal.vim')
--  DAP
require('config.dap')
-- Treesitter
require('config.treesitter')
-- NeoTree
require('config.neotree')

-- """""""" Custom settings """"""""

-- "" Colorscheme !!1!1! and other stuff """
vim.cmd('colorscheme material-palenight')

--  Change Coc colors after colorscheme
-- vim.cmd('hi CocFloating ctermbg=black ctermfg=magenta')
vim.cmd('hi CocMenuSel guibg=DarkMagenta')

--  Autocomplete menu
-- vim.cmd('hi Pmenu ctermbg=black ctermfg=magenta')

--  GUI font
vim.o.guifont = 'Terminus:h14'

--  Color column
vim.o.colorcolumn = "80"

--  Cursorline
vim.o.cursorline = true

--  Better split direction
vim.o.splitbelow = true
vim.o.splitright = true

-- ""

--  Line numbers
vim.o.relativenumber = true
vim.o.number = true
--  Don't resize splits all the time
vim.o.equalalways = false

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


--  Temporary files
vim.o.backup = true
vim.o.backupdir = os.getenv('HOME') .. '/.vim/files/backup/'
vim.o.backupext = '-vimbackup'
vim.o.directory = os.getenv('HOME') .. '/.vim/files/swap/'
vim.o.updatecount = 100
vim.o.undofile = true
vim.o.undodir = os.getenv('HOME') .. '/.vim/files/undo/'

--  Switch between header / source (depends on clangd)
vim.keymap.set('n', '<leader>ss :<C-u>CocCommand', 'clangd.switchSourceHeader<CR>')

--  show definition in preview window
vim.keymap.set('n', '<leader>pd :pedit<CR>:wincmd P<CR>:norm', 'gd<CR>')

-- """ Bindings """"

--  Tagbar
vim.keymap.set({ 'n', 'v', 'o' }, '<F2>', ':TagbarToggle <CR>')

--  Tags navigation
-- vim.keymap.set('n', 'é', '<C-]>')

-- """


-- """ Miscellaneous options """"
--  Make tags with ctags
-- command! MakeTags exec "!ctags -R ."

vim.api.nvim_create_user_command('Config', ':n ~/.config/nvim/init.lua', {})
vim.api.nvim_create_user_command('Reload', ':so ~/.config/nvim/init.lua', {})
vim.api.nvim_create_user_command('Lcd', ':lcd %:p:h', {})

--  Set tab width to 2 columns
vim.o.tabstop = 2

--  Use 2 columns for indentation
vim.o.shiftwidth = 2

--  Use spaces when pressing <tab> key (expand dong)
vim.o.expandtab = true
-- set autoindent
-- set smartindent


--  Buffers
-- set hidden

--  Smartcase is pretty good!
vim.o.ignorecase = true
vim.o.smartcase = true

--  Folding
vim.o.foldmethod = 'syntax'
vim.o.foldenable = false

--  Transparent background **ALWAYS**
-- hi
-- Normal
-- guibg = NONE
-- ctermbg = NONE
-- """
