#!/bin/sh

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Make Sure cargo is in path
source "$HOME/.cargo/env"

# Install packages on arch needed to build nushell
if command -v pacman
then
  yes | sudo pacman -S base-devel pkg-config cmake
fi

# Install Nushell
cargo install nu --locked --features=dataframe
echo "Nushell Built"
nu install_nushell.nu

# Setup the other programs
nu setup.nu
