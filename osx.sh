#!/bin/sh

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # brew
brew tap caskroom/cask

defaults write -g KeyRepeat -float 1.4
defaults write -g InitialKeyRepeat -int 12

brew cask install macdown
brew cask install google-chrome
brew cask install sequel-pro
brew cask install psequel
brew cask install virtualbox
brew cask install vagrant
brew cask install the-unarchiver
brew cask install skype
brew cask install evernote
brew cask install sublime-text
brew cask install ngrok
brew cask install pencil

brew install rbenv
brew install node@8
brew install phpbrew
brew install python
brew install nginx
brew install mysql
brew install postgresql
brew install redis
brew install the_silver_searcher
brew install neovim/neovim/neovim
brew install iterm2
brew install tmux
brew install zsh
brew install ctags
brew install tree
brew install yarn
brew install hub

gem install bundler
gem install tmuxinator
gem install sass
gem install scss-lint
gem install iStats

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

gem install tmuxinator
