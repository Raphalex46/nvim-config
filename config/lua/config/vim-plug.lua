local Plug = vim.fn['plug#']

-- Various plugins required by other plugins
local function requirements()
  Plug('xolox/vim-misc')
  Plug('nvim-lua/plenary.nvim')
  Plug('MunifTanjim/nui.nvim')
end

-- Color schemes
local function color_schemes()
  Plug('rebelot/kanagawa.nvim')
  Plug('marko-cerovac/material.nvim')
end

-- Telescope and related extensions
local function telescope()
  Plug('nvim-telescope/telescope.nvim')
  Plug('fannheyward/telescope-coc.nvim')
  Plug('nvim-telescope/telescope-ui-select.nvim')
  Plug('nvim-telescope/telescope-file-browser.nvim')
end


vim.call('plug#begin')

-- Load required plugins
requirements()
-- Load colorschemes
color_schemes()
-- Load Telescope
telescope()
-- Vim sensible defaults
Plug('tpope/vim-sensible')
-- Quick horizontal navigation with f key
Plug('unblevable/quick-scope')
-- Lua status line
Plug('nvim-lualine/lualine.nvim')
-- File browser
Plug('nvim-neo-tree/neo-tree.nvim')
-- Display tags in current file
Plug('preservim/tagbar')
-- Autocomplete and LSP
Plug('neoclide/coc.nvim', { ['branch'] = 'release' })
-- Git integration
Plug('tpope/vim-fugitive')
Plug('airblade/vim-gitgutter')
-- Various icons
Plug('nvim-tree/nvim-web-devicons')
-- Telescope
-- Tree sitter integration
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = 'TSUpdate' })
-- Session management
Plug('Shatur/neovim-session-manager')
-- Ascii art
Plug('MaximilianLloyd/ascii.nvim')
-- Dashboard
Plug('goolord/alpha-nvim')
-- VimWiki
Plug('vimwiki/vimwiki')
-- DAP
Plug('mfussenegger/nvim-dap')

vim.call('plug#end')