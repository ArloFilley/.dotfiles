# Link Cargo to User Installed Programs So That Their In $PATH
sudo ln -s ~/.cargo/bin/	/usr/local/bin/

# Link Nushell Config Files
ln -s ~/.dotfiles/programs/nu/ ~/.config/nushell

## Source Aliases
source ~/.dotfiles/programs/nu/path.nu

# Install and Setup Programs
## Utilities
cargo install coreutils # Rust GNU Utils
cargo install du-dust   # Disk Usage Utility
cargo install bat       # Cat with syntax highlighting
cargo install zellij    # Terminal Multiplexer
cargo install ripgrep   # Finding Utility

## Coding
source ~/.dotfiles/programs/nvim/install_setup_nvim.nu  # Astro Nvim Install
cargo install bacon                                     # Rust Runner

## Prompt
cargo install starship
cargo install cutefetch

## Fun
cargo install ncspot
cargo install porsmo
cargo install speedtest-rs

# Setup Programs
source ~/.dotfiles/programs/git/setup_git.nu  # Git

# Source Aliases
source ~/.dotfiles/programs/nu/aliases.nu

# Set IP env variable and request a dns name, that can then be used as hostname
source get_hostname.nu
