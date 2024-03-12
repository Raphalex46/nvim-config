vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<Leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<Leader>la', vim.lsp.buf.code_action)
vim.keymap.set('n', '<Leader>ln', vim.lsp.buf.rename)
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
