# nvim-config
My Neovim configuration

## Requirements

Install `vim-plug` (follow the instructions of [the repo](https://github.com/junegunn/vim-plug)).

## Installation

Simply run `./nvim_config.sh install`. (use the `--help` flag for more commands).

This will install the Neovim configuration and backup the old one if there is
already an existing configuration.

## Update

To update the repo with your own changes, run `./nvim_config.sh update`.

This will copy your local configuration to the repository. Don't forget to
check the diff to make sure everything went smoothly (for exemple, to avoid
removing things from the config that you simply hadn't synced with your local
config).
