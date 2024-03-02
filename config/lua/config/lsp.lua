local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local function format_on_save(client, bufnr)
  if client.supports_method('textDocument/formatting') then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd('BufWritePre', {
      group = augroup,
      buffer = bufnr,
      callback = function() vim.lsp.buf.format() end
    })
  end
end

-- Lua
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = format_on_save
})
