local terminal = require('terminal')

vim.keymap.set('n', '<C-l>', terminal.open_or_jump, { silent = true })
