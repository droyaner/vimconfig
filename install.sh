#!/bin/bash
PWD=$(pwd)

sudo apt-get update
sudo apt-get install -y vim hunspell-de-de vim-gnome build-essential cmake python-dev python3-dev ruby-dev

set -x
rm ~/.vimrc
ln -s $(pwd)/vimrc ~/.vimrc
mkdir -p ~/.vim
mkdir -p ~/.vim/colors
cp -a $(pwd)/colors/. ~/.vim/colors/

# Install Plugins
vim -c "PluginInstall" -c "qa"

# Install YouCompleteMe
$(pwd)/bundle/YouCompleteMe/install.py --clang-completer

# Install Vim-colorschemes'
cp $(pwd)/bundle/vim-colorschemes/colors/* ~/.vim/colors

# Install Command T
cd $(pwd)./bundle/command-t/
rake make
cd $PWD

# Install Spell Checking
mkdir -p ~/.vim/spell
vim -w "mkspell! ~/.vim/spell /usr/share/hunspell" -c "qa"
