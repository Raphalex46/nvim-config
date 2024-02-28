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

do
	local xdg_state_home = os.getenv('XDG_STATE_HOME')
	local state_home
	if xdg_state_home == nil then
		state_home = os.getenv('HOME') .. '/.local/state'
	else
		state_home = xdg_state_home
	end
	vim.o.backupdir = state_home .. '/nvim/backup/'
	vim.o.undodir = state_home .. '/nvim/undo/'
end

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
