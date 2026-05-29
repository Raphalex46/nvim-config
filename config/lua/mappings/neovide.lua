if vim.g.neovide == true then
  vim.keymap.set({ "n", "x", "i" }, "<C-S-V>", function()
    vim.keymap.del({ "n" }, '"')
    vim.cmd(':norm "+p')
    vim.keymap.set({ "n" }, '"', '3')
  end
  )
end
