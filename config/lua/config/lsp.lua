local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Lua
lspconfig.lua_ls.setup({
  capabilities = capabilities
})
