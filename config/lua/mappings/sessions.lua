local session_manager = require('session_manager')

vim.keymap.set('n', '<leader>sl', session_manager.load_last_session)
vim.keymap.set('n', '<leader>sc', session_manager.load_current_dir_session)
vim.keymap.set('n', '<leader>sf', session_manager.load_session)
