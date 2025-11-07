-- The 'aurora' theme completion menu is ugly, somehow this fixes it :)
vim.cmd('colorscheme catppuccin-mocha')
-- vim.cmd('colorscheme aurora')
require('catppuccin').setup({
  term_colors = true
})

-- Fix color of CocMenuSel
vim.cmd('hi CocMenuSel guibg=DarkMagenta')
-- Don't show mode (already shown in lualine)
vim.o.showmode = false
