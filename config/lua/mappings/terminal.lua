local terminal = require('terminal')

vim.keymap.set('n', '<C-l>', terminal.terminal_float_or_close, { silent = true })
