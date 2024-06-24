-- Config for Wimwiki is kind of weird as it is very much, not configurable with lua
local plug_home = vim.g.plug_home

vim.cmd('source ' .. plug_home .. '/vimwiki/plugin/vimwiki.vim')
vim.cmd('let g:vimwiki_global_vars.valid_html_tags = "b,i,s,u,sub,sup,kbd,br,hr,div,center,strong,em,span"')
