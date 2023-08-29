#!/bin/sh

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

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

sudo ln -s /home/arlo/.cargo/bin/nu /usr/local/bin/nu
echo /usr/local/bin/nu | sudo tee -a /etc/shells
chsh -s /usr/local/bin/nu

nu setup.nu
