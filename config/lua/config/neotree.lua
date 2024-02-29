require('neo-tree').setup({
  filesystem = {
    hijack_netrw_behavior = 'open_current'
  },
  window = {
    mappings = {
      ["o"] = { "open" },
      ["uc"] = { "order_by_created", nowait = false },
      ["ud"] = { "order_by_diagnostics", nowait = false },
      ["ug"] = { "order_by_git_status", nowait = false },
      ["um"] = { "order_by_modified", nowait = false },
      ["un"] = { "order_by_name", nowait = false },
      ["us"] = { "order_by_size", nowait = false },
      ["ut"] = { "order_by_type", nowait = false },
      ["oc"] = "none",
      ["od"] = "none",
      ["og"] = "none",
      ["om"] = "none",
      ["on"] = "none",
      ["os"] = "none",
      ["ot"] = "none"
    }
  }
})

vim.keymap.set({ 'n', 'i' }, '<F1>', ':Neotree toggle<CR>', { silent = true })
