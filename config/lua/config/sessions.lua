local session_manager = require('session_manager')
local config = require('session_manager.config')
vim.keymap.set('n', '<leader>sl', session_manager.load_last_session)
vim.keymap.set('n', '<leader>sc', session_manager.load_current_dir_session)
vim.keymap.set('n', '<leader>fs', session_manager.load_session)
config.autoload_mode = config.AutoloadMode.Disabled
config.autosave_only_in_session = true
