local utils = require('utils')

-- Definition of the :Conf, :Confdir and :Reload commands
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
  vim.api.nvim_create_user_command('Conf', ':n' .. init_lua, {
    desc = "Open main configuration file (init.lua)"
  })
  vim.api.nvim_create_user_command('Confdir', ':n' .. config_dir .. '/nvim/lua', {
    desc = "Open configuration directory (lua/)"
  })
  vim.api.nvim_create_user_command('Reload',
  function()
    local prefixes_to_reload = {'config', 'mappings', 'colorscheme', 'commands',
    'options', 'terminal', 'utils', 'vim-plug'}
    -- Start by uncaching all modules
    for name, _ in pairs(package.loaded) do
      for _, pref in ipairs(prefixes_to_reload) do
        if name:match('^' .. pref) then
          package.loaded[name] = nil
          require(name)
          print('Reloaded \'' .. name .. '\'')
        end
      end
    end
  end,
    { desc = "Reload the main configuration file (init.lua)" })
end
