#!/bin/bash

# Create symbolic links to where the dotfiles need to be

DOTFILES_DIR="$(pwd)"

# shell/

ln -svf $DOTFILES_DIR/shell/bashrc ~/.bashrc
ln -svf $DOTFILES_DIR/shell/bash_profile ~/.bash_profile
ln -svf $DOTFILES_DIR/shell/alias ~/.alias

# urxvt/

ln -svf $DOTFILES_DIR/urxvt/Xresources ~/.Xresources

# colors/

ln -svfn $DOTFILES_DIR/colors ~/.bashcolors

# vim/

if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
fi

ln -svf $DOTFILES_DIR/vim/vimrc ~/.vimrc
ln -svfn $DOTFILES_DIR/vim/ftplugin ~/.vim/
ln -svfn $DOTFILES_DIR/vim/colors ~/.vim/

# awesome/

if [[ $(uname -s) == "Linux" ]]; then

    if [[ ! -d ~/.config/awesome ]]; then
        mkdir -p ~/.config
    fi

    ln -svfn $DOTFILES_DIR/awesome/rc.lua ~/.config/awesome/rc.lua
    ln -svfn $DOTFILES_DIR/awesome/themes ~/.config/awesome/
fi
