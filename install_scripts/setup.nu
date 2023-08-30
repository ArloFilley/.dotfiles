# Link Cargo to User Installed Programs So That Their In $PATH
ln -s ~/.cargo/bin/	/usr/local/bin/

# Useful Variable Paths
const nu_path         = ~/.dotfiles/programs/nu
const nu_config_path  = ~/.config/nushell

const programs_path   = ~/.dotfiles/programs/

# Link nu Config Files
ln -s $nu_path/env.nu	    $nu_config_path/env.nu
ln -s $nu_path/config.nu	$nu_config_path/config.nu
ln -s $nu_path/login.nu	  $nu_config_path/login.nu
ln -s $nu_path/aliases.nu $nu_config_path/aliases.nu
ln -s $nu_path/path.nu    $nu_config_path/path.nu

## Source Aliases
source $nu_path/path.nu

# Install and Setup Programs
## Utilities
cargo install coreutils # Rust GNU Utils
cargo install du-dust   # Disk Usage Utility
cargo install bat       # Cat with syntax highlighting
cargo install zellij    # Terminal Multiplexer
cargo install ripgrep   # Finding Utility

## Coding
source $programs_path/nvim/install_setup_nvim.nu  # Astro Nvim Install
cargo install bacon                               # Rust Runner

## Prompt
cargo install starship
cargo install cutefetch

## Fun
cargo install ncspot
cargo install porsmo
cargo install speedtest-rs

# Setup Programs
source $programs_path/git/setup_git.nu  # Git

# Source Aliases
source $nu_path/aliases.nu

# Set IP env variable and request a dns name, that can then be used as hostname
source ~/.dotfiles/install_scripts/get_hostname.nu
