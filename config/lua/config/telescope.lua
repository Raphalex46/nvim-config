local fb_actions = require('telescope').extensions.file_browser.actions
local actions = require('telescope.actions')

-- Setup for extensions
require('telescope').setup({
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  },
  defaults = {
    initial_mode = 'normal'
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {}
    },
    file_browser = {
      grouped = true,
      mappings = {
        ["n"] = {
          ["p"] = fb_actions.goto_parent_dir,
          ["o"] = actions.select_default
        }
      }
    }
  },
})
require('telescope').load_extension('ui-select')
require('telescope').load_extension('file_browser')
