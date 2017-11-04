#!/bin/sh

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # brew
brew tap caskroom/cask

brew cask install macdown
brew cask install google-chrome
brew cask install smartgit
brew cask install pgadmin4
brew cask install sequel-pro
brew cask install libreoffice

brew install rbenv
brew install phpbrew
brew install nodebrew
brew install python
brew install nginx
brew install mysql
brew install postgresql
brew install the_silver_searcher
brew install neovim/neovim/neovim
brew install iterm2
brew install tmux
brew install zsh
brew install ctags

gem install tmuxinator

# copy dotfiles
git clone https://github.com/wofi-minh/dotfiles.git ~/Projects/dotfiles
cd ~/Projects/dotfiles
cp -r .vimrc .tmux.conf .agignore .gitconfig .gitignore_global .vim ~/
cp .zshrc_osx ~/.zshrc
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
