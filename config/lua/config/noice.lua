require('noice').setup({
  routes = {
    {
      view = "notify",
      filter = {
        event = "msg_show",
        kind = {
          "shell_out",
          "shell_err"
        }
      }
    }
  },
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
  }
})
