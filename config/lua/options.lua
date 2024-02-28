--  GUI font
vim.o.guifont = 'Terminus:h14'

--  Color column
vim.o.colorcolumn = "80"

--  Cursorline
vim.o.cursorline = true

--  Better split direction
vim.o.splitbelow = true
vim.o.splitright = true

--  Line numbers
vim.o.relativenumber = true
vim.o.number = true

--  Don't resize splits all the time
vim.o.equalalways = false

-- Backup and undo
vim.o.backup = true
vim.o.undofile = true

--  Set tab width to 2 columns
vim.o.tabstop = 2

--  Use 2 columns for indentation
vim.o.shiftwidth = 2

--  Use spaces when pressing <tab> key (expand dong)
vim.o.expandtab = true

--  Smartcase is pretty good!
vim.o.ignorecase = true
vim.o.smartcase = true

--  Folding
vim.o.foldmethod = 'syntax'
vim.o.foldenable = false
