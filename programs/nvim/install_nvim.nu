cargo install bob-nvim

bob install stable
bob use stable

try {
  mv ~/.config/nvim/      ~/.config/nvim.bak
  mv ~/.local/share/nvim  ~/.local/share/nvim.bak
  mv ~/.local/state/nvim  ~/.local/state/nvim.bak
  mv ~/.cache/nvim        ~/.cache/nvim.bak
} catch {
  echo "Error backing up nvim folders"
}

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim