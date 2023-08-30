# Make sure programs are in $env.PATH
sudo ln -s ~/.cargo/bin/ /usr/local/bin/

sudo chmod a+w /etc/shells
"/usr/local/bin/nu" | save --append /etc/shells
sudo chmod a-w /etc/shells

chsh -s /usr/local/bin/nu

echo "Nushell changed to default shell"