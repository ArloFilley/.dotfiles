#!/usr/local/bin/env nu

# Make sure programs are in $env.PATH
try {
  sudo ln -s ~/.cargo/bin /usr/local/bin
} catch {
  echo "already linked the cargo path"
}

# Change default shell to nushell
sudo chmod a+w /etc/shells
"/usr/local/bin/nu" | save --append /etc/shells
sudo chmod a-w /etc/shells

chsh -s /usr/local/bin/nu
echo "Nushell changed to default shell"

# Link Nushell Config Files
try {
  ln -s ~/.dotfiles/programs/nu ~/.config/nushell
} catch {
  echo "already linked nu config files"
}