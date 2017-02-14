#!/bin/bash

sudo apt-get update
sudo apt-get install -y vim hunspell-de-de vim-gnome

set -x
rm ~/.vimrc
ln -s $(pwd)/vimrc ~/.vimrc
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
cp -a $(pwd)/colors/. ~/.vim/colors/

# Install Plugins
vim -c "PluginInstall" -c "qa"
# Install Spell Checking
mkdir -p ~/.vim/spell
vim -w "mkspell! ~/.vim/spell /usr/share/hunspell" -c "qa"
