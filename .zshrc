export ZSH=/Users/minh/.oh-my-zsh
ZSH_THEME="steeef"
plugins=(git rake bundler composer sublime vagrant heroku npm gem vi-mode yarn docker)

source $ZSH/oh-my-zsh.sh
source /Users/minh/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.bin/tmuxinator.zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR="nvim"
export TERM=xterm-256color
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/Users/minh/Library/Android/sdk/platform-tools:$PATH"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export ANDROID_SDK=/Users/minh/Library/Android/sdk

source /Users/minh/.phpbrew/bashrc
source ~/.zprofile

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
unsetopt BEEP

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
alias be1666="bundle _1.16.6_ exec"
alias be1661="bundle _1.16.1_ exec"
alias ctags="`brew --prefix`/bin/ctags"
alias dcr="docker-compose run --rm runner"
alias dcrt="docker-compose run --rm runner_test"
alias find_large_files="mdfind 'kMDItemFSSize > 2000000000'"

bindkey -v
bindkey '^R' history-incremental-search-backward

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/minh/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
