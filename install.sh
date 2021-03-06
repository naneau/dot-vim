#!/usr/bin/env bash

# Clone Vundle into ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Move files to backup if they should exist
if [ -e "$HOME/.vimrc" ]
then
    mv ~/.vimrc ~/.vimrc.bak
fi
if [ -e "$HOME/.gvimrc" ]
then
    mv ~/.gvimrc ~/.gvimrc.bak
fi
if [ -e  "$HOME/.ctags" ]
then
    mv ~/.ctags ~/.ctags.bak
fi

# Create symlinks
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
ln -s ~/.vim/ctags ~/.ctags

# Init submodules
git submodule update --init
