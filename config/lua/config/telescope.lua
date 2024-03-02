-- Setup for extensions
require('telescope').setup({
  defaults = {
    initial_mode = 'normal'
  },
  extensions = {
    coc = {
      theme = 'ivy',
      prefer_locations = true,   -- always use Telescope locations to preview definitions/declarations/implementations etc
    },
    ['ui-select'] = {
      require('telescope.themes').get_dropdown {}
    }
  },
})
require('telescope').load_extension('coc')
require('telescope').load_extension('ui-select')
require('telescope').load_extension('file_browser')
