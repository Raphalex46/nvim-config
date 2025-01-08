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

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.signature_help, {
    silent = true,
    focusable = false
  }
)

-- Lua
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  on_attach = format_on_save
})

-- Rust
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = format_on_save
})

-- C/C++
lspconfig.clangd.setup({
  capabilities = capabilities,
  cmd = { "clangd", "--completion-style=detailed", "--clang-tidy", "--function-arg-placeholders", "--inlay-hints=true" },
})

-- Haskell
lspconfig.hls.setup({
  capabilities = capabilities,
  on_attach = format_on_save,
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
})

-- CMake
lspconfig.neocmake.setup({
  capabilities = capabilities,
  on_attach = format_on_save
})

-- Python
lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = format_on_save,
})

-- LaTeX
lspconfig.texlab.setup({
  capabilities = capabilities,
  on_attach = format_on_save,
})

-- CSS
lspconfig.cssls.setup({
  capabilities = capabilities,
  on_attach = format_on_save,
})

-- Typst
lspconfig.typst_lsp.setup({
  capabilities = capabilities,
  on_attach = format_on_save,
})
