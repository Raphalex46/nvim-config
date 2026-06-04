vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'rust', 'norg', 'c', 'cpp', 'lua' },
  callback = function() vim.treesitter.start() end,
})
