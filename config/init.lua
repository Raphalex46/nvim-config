-- Set map leader
vim.g.mapleader = " "

-- Load various options
require('options')
-- Load plugins
require('vim-plug')
-- Load plugin configurations
require('config')
-- Load custom commands
require('commands')
-- Load custom mappings
require('mappings')
-- Load colorscheme
require('colorscheme')

-- Custom "plugins"
require('terminal')
