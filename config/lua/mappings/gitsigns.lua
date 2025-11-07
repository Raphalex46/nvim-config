vim.keymap.set('n', '<Leader>gj', function() vim.cmd('Gitsigns next_hunk') end)
vim.keymap.set('n', '<Leader>gk', function() vim.cmd('Gitsigns prev_hunk') end)
vim.keymap.set('n', '<Leader>gh', function() vim.cmd('Gitsigns preview_hunk') end)
vim.keymap.set('n', '<Leader>gs', function() vim.cmd('Gitsigns stage_hunk') end)
