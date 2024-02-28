-- Coc configuration, taken from the default configuration on GitHub

-- Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
-- delays and poor user experience
vim.o.updatetime = 300

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appeared/became resolved
vim.o.signcolumn = "yes"

-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup('CocGroup', {})
vim.api.nvim_create_autocmd('CursorHold', {
  group = 'CocGroup',
  command = 'silent call CocActionAsync(\'highlight\')',
  desc = 'Highlight symbol under cursor on CursorHold'
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd('User', {
  group = 'CocGroup',
  pattern = 'CocJumpPlaceholder',
  command = 'call CocActionAsync(\'showSignatureHelp\')',
  desc = 'Update signature help on jump placeholder'
})

-- Add (Neo)Vim's native statusline support
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline
vim.o.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")
