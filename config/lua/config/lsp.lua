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
vim.lsp.enable('lua')
vim.lsp.config('lua', {
  capabilities = capabilities,
  on_attach = format_on_save
})

-- Rust
vim.lsp.enable('rust_analyzer')
vim.lsp.config('rust_analyzer', {
  capabilities = capabilities,
  on_attach = format_on_save
})

-- C/C++
vim.lsp.enable('clangd')
vim.lsp.config('clangd', {
  capabilities = capabilities,
  cmd = { "clangd", "--completion-style=detailed", "--clang-tidy", "--function-arg-placeholders", "--inlay-hints=true", "--hidden-features" },
})

-- Haskell
vim.lsp.enable('hls')
vim.lsp.config('hls', {
  capabilities = capabilities,
  on_attach = format_on_save,
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
})

-- CMake
vim.lsp.enable('neocmake')
vim.lsp.config('neocmake', {
  capabilities = capabilities,
  on_attach = format_on_save
})

-- Python
vim.lsp.enable('pyright')
vim.lsp.config('pyright', {
  capabilities = capabilities,
  on_attach = format_on_save,
})

-- LaTeX
vim.lsp.enable('texlab')
vim.lsp.config('texlab', {
  capabilities = capabilities,
  on_attach = format_on_save,
})

-- CSS
vim.lsp.enable('cssls')
vim.lsp.config('cssls', {
  capabilities = capabilities,
  on_attach = format_on_save,
})

-- Typst
vim.lsp.enable('tinymist')
vim.lsp.config('tinymist', {
  capabilities = capabilities,
  on_attach = format_on_save,
  settings = {
    formatterMode = "typstyle",
    exportPdf = "onSave"
  }
})
