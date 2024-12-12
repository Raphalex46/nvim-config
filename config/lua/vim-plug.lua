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
  Plug('EdenEast/nightfox.nvim')
  Plug('ray-x/aurora')
  Plug('maxmx03/fluoromachine.nvim')
  Plug('miikanissi/modus-themes.nvim')
  Plug('oneslash/helix-nvim')
end

-- Telescope and related extensions
local function telescope()
  Plug('nvim-telescope/telescope.nvim')
  Plug('fannheyward/telescope-coc.nvim')
  Plug('nvim-telescope/telescope-ui-select.nvim')
  Plug('nvim-telescope/telescope-file-browser.nvim')
end

-- nvim-cmp and related extensions
local function nvim_cmp()
  Plug('hrsh7th/nvim-cmp')
  Plug('hrsh7th/cmp-nvim-lsp')
  Plug('hrsh7th/cmp-buffer')
  Plug('hrsh7th/cmp-path')
  Plug('hrsh7th/cmp-cmdline')
  Plug('saadparwaiz1/cmp_luasnip')
  Plug('L3MON4D3/LuaSnip')
end

vim.call('plug#begin')

-- Load required plugins
requirements()
-- Load colorschemes
color_schemes()
-- Load Telescope
telescope()
-- Completion
nvim_cmp()
-- Vim sensible defaults
Plug('tpope/vim-sensible')
-- Quick horizontal navigation with f key
Plug('unblevable/quick-scope')
-- Lua status line
Plug('nvim-lualine/lualine.nvim')
-- File browser
Plug('nvim-neo-tree/neo-tree.nvim')
-- Outline
Plug('hedyhli/outline.nvim')
-- Autocomplete and LSP
-- Plug('neoclide/coc.nvim', { ['branch'] = 'release' })
-- Git integration
Plug('tpope/vim-fugitive')
Plug('airblade/vim-gitgutter')
Plug('akinsho/git-conflict.nvim')
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
-- LSP Config
Plug('neovim/nvim-lspconfig')
-- Mason
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
-- Breadcrumbs
Plug('Bekaboo/dropbar.nvim')
-- Indentation lines
Plug('lukas-reineke/indent-blankline.nvim')

vim.call('plug#end')
