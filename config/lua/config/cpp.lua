-- Special autocommands for C/C++
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c,cpp",
  callback = function()
    vim.o.formatoptions = "jcrql"
  end
})
