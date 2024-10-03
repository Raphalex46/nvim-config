-- The 'aurora' theme completion menu is ugly, somehow this fixes it :)
vim.cmd('colorscheme fluoromachine')
-- vim.cmd('colorscheme aurora')

-- Fix color of CocMenuSel
vim.cmd('hi CocMenuSel guibg=DarkMagenta')
-- Don't show mode (already shown in lualine)
vim.o.showmode = false
