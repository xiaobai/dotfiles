#!/usr/bin/env bash

# Create symbolic links to where the dotfiles need to be

DOTFILES_DIR="$(pwd)"

# shell/

ln -svf $DOTFILES_DIR/shell/bashrc ~/.bashrc
ln -svf $DOTFILES_DIR/shell/bash_profile ~/.bash_profile
ln -svf $DOTFILES_DIR/shell/alias ~/.alias

# urxvt/

ln -svf $DOTFILES_DIR/urxvt/Xresources ~/.Xresources

# colors/

ln -svf $DOTFILES_DIR/colors ~/.bashcolors

# vim/

ln -svf $DOTFILES_DIR/vim/vimrc ~/.vimrc
ln -svf $DOTFILES_DIR/vim/ftplugin ~/.vim/ftplugin
ln -svf $DOTFILES_DIR/vim/colors ~/.vim/colors

# awesome/

ln -svf $DOTFILES_DIR/awesome/rc.lua ~/.config/awesome/rc.lua
ln -svf $DOTFILES_DIR/awesome/themes ~/.config/awesome/themes
