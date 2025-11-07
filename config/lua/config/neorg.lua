require('neorg').setup({
  load = {
    ["core.defaults"] = {},
    ["core.concealer"] = {},
    ["core.dirman"] = {},
    ["core.keybinds"] = {},
    ["core.export"] = {},
    ["core.export.html"] = {},
    ["core.esupports.hop"] = {},
    ["core.completion"] = {
      config = {
        engine = "nvim-cmp",
        name = "[Neorg]"
      }
    }
  }
})

-- Specific spell check options for norg files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "norg",
  callback = function(args)
    vim.opt_local.spell = true
  end
})
