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
  vim.api.nvim_create_user_command('Config', ':n ' .. init_lua,
    { desc = "Open main configuration file (init.lua)" })
  vim.api.nvim_create_user_command('Reload', ':so ' .. init_lua,
    { desc = "Reload the main configuration file (init.lua)" })
end
