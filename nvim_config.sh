#!/bin/sh

# A simple script to copy files from the local Neovim config to the repository

print_usage() {
  echo "Usage: $0 [-c config_dir] <install|update>"
}

# Constants
REPO_CONFIG=config

# Default option values
if [ -z $XDG_CONFIG_HOME ]; then
  config_dir=$HOME/.config/nvim
else
  config_dir=$XDG_CONFIG_HOME/nvim
fi

# Positional values
update=0
install=0

while getopts 'c:' flag; do
  case "$flag" in
    c) config_dir=$OPTARG ;;
    *) print_usage; exit 1;;
  esac
done

# Parse positional arguments
pos_arg1=${@:$OPTIND:1}

if [ ! -z ${@:$OPTIND+1:1} ]; then
  echo ${@:$OPTIND+1:1}
  print_usage; exit 1
fi

if [[ $pos_arg1 == "install" ]]; then
  install=1
elif [[ $pos_arg1 == "update" ]]; then
  update=1
else
  print_usage; exit 1
fi

if [ $update -eq 1 ]; then
  echo "==> Copying files from Neovim config at '$config_dir'"
  (set -x; cp -r $config_dir $REPO_CONFIG)
fi

if [ $install -eq 1 ]; then
  echo "==> Copying files from the repository config to the Neovim config at '$config_dir'"
  (set -x; cp -r $REPO_CONFIG $config_dir)
fi
