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
vim.lsp.enable('lua_ls')
vim.lsp.config('lua_ls', {
  capabilities = capabilities,
  on_attach = format_on_save,
  -- Copied from the documentation
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if
          path ~= vim.fn.stdpath('config')
          and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
      then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using (most
        -- likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Tell the language server how to find Lua modules same way as Neovim
        -- (see `:h lua-module-load`)
        path = {
          'lua/?.lua',
          'lua/?/init.lua',
        },
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- For LSP Settings Type Annotations: https://github.com/neovim/nvim-lspconfig#lsp-settings-type-annotations
          vim.api.nvim_get_runtime_file("lua/lspconfig", false)[1],
        },
        -- Or pull in all of 'runtimepath'.
        -- NOTE: this is a lot slower and will cause issues when working on
        -- your own configuration.
        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
        -- library = vim.api.nvim_get_runtime_file('', true),
      },
    })
  end,
  settings = {
    Lua = {},
  }
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

-- GDScript
vim.lsp.enable('gdscript')
vim.lsp.config('gdscript', {
  capabilities = capabilities,
  on_attach = format_on_save
})
