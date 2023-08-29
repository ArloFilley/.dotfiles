#!/bin/sh

# Install Rust
yes 1 | curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source "$HOME/.cargo/env"

if command -v pacman
then
  yes | sudo pacman -S base-devel pkg-config cmake
fi

# Install sccache
# cargo install sccache
# RUSTC_WRAPPER=sccache cargo build

# Install Programs
cargo install nu --locked --features=dataframe
cargo install coreutils
cargo install starship
cargo install exa
cargo install du-dust
cargo install bat
cargo install zellij
cargo install ripgrep
cargo install helix
cargo install bacon
cargo install ncspot
cargo install porsmo
cargo install speedtest-rs

dotfiles_path=$HOME/.dotfiles

sudo ln -s /home/arlo/.cargo/bin/nu /usr/bin/nu
echo /usr/bin/nu | sudo tee -a /etc/shells
chsh -s /usr/bin/nu

