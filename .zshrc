export ZSH=/Users/minh/.oh-my-zsh
ZSH_THEME="steeef"
plugins=(git rails rake bundler composer sublime vagrant zsh-syntax-highlighting heroku npm gem zsh-wakatime vi-mode)

source $ZSH/oh-my-zsh.sh
source /Users/minh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
eval "$(rbenv init -)"

export LANG=en_US.UTF-8
export EDITOR="nvim"
export TERM=xterm-256color
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export HOMEBREW_GITHUB_API_TOKEN=af6deb2258aa2045f35cabdd4c7fd7606dcba855

export CLOUDINARY_URL=cloudinary://181265141548511:lCDYnUOwvzXUFGohkk_2E1uLVMo@buildcauhinh

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
alias vim="/usr/local/bin/nvim"
alias vvrc="vim ~/.vimrc"

bindkey -v
bindkey '^R' history-incremental-search-backward
