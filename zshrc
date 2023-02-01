export PATH=$HOME/bin:/usr/local/bin
export PATH=$PATH:$HOME/code/Bash:/usr/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.config/systemd

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git)
source $ZSH/oh-my-zsh.sh

alias ll="ls -laF"

clear
hostnamectl hostname | figlet
freshfetch
