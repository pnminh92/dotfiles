#!bin/sh

# Update ubuntu
sudo apt update
sudo apt upgrade

# Packages
sudo apt install curl
sudo apt install git
sudo apt install ibus-mozc
sudo apt install software-center
sudo apt install silversearcher-ag
sudo apt install tmux
sudo apt install gnome-terminal

# zsh
sudo apt install zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Ruby stack
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
cd ~
~/.rbenv/bin/rbenv init
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# phpbrew
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
sudo mv phpbrew /usr/bin/phpbrew
phpbrew init

# nodejs
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt install nodejs

# LAMP
sudo apt install php
sudo apt install apache2
sudo apt install mysql-server
sudo apt install postgresql

# dotfiles
git clone https://github.com/wofi-minh/dotfiles.git ~/Projects/dotfiles
cp ~/Projects/dotfiles/.vimrc ~/.vimrc
cp ~/Projects/dotfiles/.tmux.conf ~/.tmux.conf
cp ~/Projects/dotfiles/.agignore ~/.agignore
cp ~/Projects/dotfiles/.zshrc ~/.zshrc
cp ~/Projects/dotfiles/.gitconfig ~/.gitconfig
cp ~/Projects/dotfiles/.gitignore_global ~/.gitignore_global
cp ~/Projects/dotfiles/.vim ~/.vim

# neovim
sudo apt install python-dev python-pip python3-dev python3-pip
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim

# setup neovim
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
