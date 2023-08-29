# Install Programs
cargo install coreutils

## Prompt
cargo install starship

## Better Ls
cargo install exa

## Better Du
cargo install du-dust

## Better Cat
cargo install bat

## Terminal Multiplexer
cargo install zellij

## Finder
cargo install ripgrep

## Code Tools
cargo install bacon
cargo install bob-nvim

## Fun
cargo install ncspot
cargo install porsmo
cargo install speedtest-rs

# Link Config Files
ln -s ~/.dotfiles/nu/env.nu	~/.config/nushell/env.nu
ln -s ~/.dotfiles/nu/config.nu	~/.config/nushell/config.nu
ln -s ~/.dotfiles/nu/login.nu	~/.config/nushell/login.nu

# Link Cargo to User Installed Programs So That Their In $PATH
ln -s ~/.cargo/bin/	/usr/local/bin/

# Astro Nvim Install
bob install stable
bob use stable

mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
sudo ln -s /home/arlo/.local/share/bob/nvim-bin/nvim /usr/local/bin/nvim
