#!/bin/sh

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # brew
brew tap caskroom/cask

brew cask install google-chrome
brew cask install virtualbox
brew cask install keka
brew cask install skype
brew cask install ngrok
# docker
# cloudflare warp
# snipaste
# karabiner
# dropbox
# tableplus
# cyberduck
# fork
# macfancontrol
# selfcontrol
# slack
# spectacle
# zoom
# devutils
# xcode
# android studio

brew install the_silver_searcher
brew install neovim/neovim/neovim
brew install iterm2
brew install tmux
brew install zsh
brew install ctags
brew install cmake
brew install tree
brew install imagemagick
brew install htop
brew install dos2unix
brew install libxml2 mhash mcrypt
brew install zlib bzip2
brew install pkg-config

gem install tmuxinator
gem install iStats

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

gem install tmuxinator
