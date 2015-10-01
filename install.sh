#!/bin/bash

# Create symbolic links to where the dotfiles need to be

DOTFILES_DIR="$(pwd)"

# shell/

# shell/bash
ln -svf $DOTFILES_DIR/shell/bash/bashrc ~/.bashrc
ln -svf $DOTFILES_DIR/shell/bash/bash_profile ~/.bash_profile
ln -svf $DOTFILES_DIR/shell/bash/alias ~/.alias

# shell/zsh
ln -svf $DOTFILES_DIR/shell/zsh/zshrc ~/.zshrc

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
