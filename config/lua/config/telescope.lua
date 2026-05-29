local fb_actions = require('telescope').extensions.file_browser.actions
local actions = require('telescope.actions')

-- Setup for extensions
require('telescope').setup({
  pickers = {
    file_browser = {
      cache_picker = true
    },
    colorscheme = {
      enable_preview = true
    }
  },
  defaults = {
    initial_mode = 'normal',
    layout_strategy = 'flex',
    sorting_strategy = 'ascending',
    winblend = 30,
    cache_picker = {
      num_pickers = 10,
      limit_entries = 1000,
      ignore_empty_prompt = false
    }

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
require('telescope').load_extension('glyph')
