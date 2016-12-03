export ZSH=/home/unchi/.oh-my-zsh
ZSH_THEME="steeef"
plugins=(git rails rake bundler composer sublime vagrant zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR="vim"

HISTFILE=~/.zsh_history
SAVEHIST=99999
HISTSIZE=99999

setopt append_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt extended_history
setopt hist_save_no_dups
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_no_store
setopt hist_verify

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt no_beep
setopt no_list_beep

alias ll="pwd; ls -la"
alias sz="source ~/.zshrc"
alias vz="vim ~/.zshrc"
alias mv="mv -i"
alias rm="rm -i"
alias cp="cp -i"
alias pbcopy="xclip -selection clipboard -i"
alias pbpaste="xclip -selection clipboard -o"
alias vim="/usr/bin/nvim"
alias vvrc="vim ~/.vimrc"

# PHPBREW
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# SSH-AGENT
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l | grep "The agent has no identities" && ssh-add /home/unchi/.ssh/github_rsa

export TERM=xterm-256color

# Binding keys
stty intr ^Z
setxkbmap -option caps:ctrl_modifier
