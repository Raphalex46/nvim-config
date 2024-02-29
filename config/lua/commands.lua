local utils = require('utils')

-- Definition of the :Config and :Reload commands
do
  local init_lua
  local xdg_config_home = os.getenv('XDG_CONFIG_HOME')
  local config_dir
  if xdg_config_home == nil then
    config_dir = os.getenv('HOME') .. '/.config'
  else
    config_dir = xdg_config_home
  end
  init_lua = config_dir .. '/nvim/init.lua'
  vim.api.nvim_create_user_command('Config',
    function(opts)
      if #opts.fargs == 0 then
        vim.cmd(':n' .. init_lua)
      else
        local dir = config_dir .. '/nvim/lua'
        for _, v in pairs(opts.fargs) do
          dir = dir .. '/' .. v
        end
        local module_file_init = dir .. '/' .. 'init.lua'
        local module_file = dir .. '.lua'
        if utils.file_exists(module_file_init) then
          vim.cmd(':n' .. module_file_init)
        else
          if utils.file_exists(module_file) or opts.bang then
            vim.cmd(':n' .. dir .. '.lua')
          else
            print('file does not exist (' .. module_file .. '). Create it or call command with \'!\'')
          end
        end
      end
    end,
    {
      desc = "Open main configuration file (init.lua)",
      nargs = '*',
      bang = true,
    })
  vim.api.nvim_create_user_command('Reload', ':so ' .. init_lua,
    { desc = "Reload the main configuration file (init.lua)" })
end
