require('dashboard').setup{
  theme = 'doom', --  theme is doom and hyper default is hyper
  header = 'noo',
  config = {
    center = {
      {
        icon = '',
        desc = 'Search recent sessions',
        key = 'SPC f s',
        action = 'SearchSession'
      },
      {
        icon = '',
        desc = 'Search Recent files',
        key = 'SPC f o',
        action = 'Telescope oldfiles'
      },
      {
        icon = '',
        desc = 'Search files in current directory',
        key = 'SPC f f',
        action = 'Telescope find_files'
      }
    },
  footer = {}, -- footer 
  },    --  config used for theme
  preview = {
  file_height = 19,
  file_width = 40,
}
}
requires = {'nvim-tree/nvim-web-devicons'}
