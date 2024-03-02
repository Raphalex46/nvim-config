local session_manager = require('session_manager')
local config = require('session_manager.config')
config.autoload_mode = config.AutoloadMode.Disabled
config.autosave_only_in_session = true
