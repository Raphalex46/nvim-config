vim.keymap.set('n', '<Leader>lk', vim.lsp.buf.hover)
vim.keymap.set('n', '<Leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<Leader>la', vim.lsp.buf.code_action)
vim.keymap.set('n', '<Leader>ln', vim.lsp.buf.rename)
vim.keymap.set({'n', 'i'}, '<C-h>', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<Leader>le', vim.diagnostic.open_float)
-- Binding to toggle inlay hint
vim.keymap.set('n', '<Leader>li', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end
)
-- Make 'gp' open a floating window to see the definition of the hovered symbol
vim.keymap.set('n', 'gp', function()
  vim.api.nvim_open_win(0, true, {
    relative = 'cursor',
    width = 80,
    height = 10,
    bufpos = { 0, 0 },
    border = 'double'
  })
  vim.cmd('normal gd')
end
)
