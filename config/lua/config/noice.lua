require('noice').setup({
  cmdline = {
    enabled = true,
    view = "cmdline",
    format = {
      cmdline = false,
      help = false,
      lua = false,
    }
  },
  views = {
    mini = {
      align = "message-left",
      position = {
        col = 0
      }
    }
  },
})
