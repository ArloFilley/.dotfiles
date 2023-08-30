use greetings [sudo_append_file]

# Make sure programs are in $env.PATH
ln -s ~/.cargo/bin/ /usr/local/bin/

sudo_append_file /usr/local/bin/nu /etc/shells

chsh -s /usr/local/bin/nu
