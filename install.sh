#!/bin/bash
set -x
rm ~/.vimrc
ln -s $(pwd)/vimrc ~/.vimrc
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
cp -a $(pwd)/colors/. ~/.vim/colors/

# Install Plugins
vim -c ":PluginInstall"
#vim -c ":qa"
