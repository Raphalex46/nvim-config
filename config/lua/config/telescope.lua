-- Setup for extensions
require('telescope').setup({
  defaults = {
    initial_mode = 'normal'
  },
  extensions = {
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {}
    }
  },
})
require('telescope').load_extension('ui-select')
require('telescope').load_extension('file_browser')
