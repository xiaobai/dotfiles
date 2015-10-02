#!/bin/bash

# Create symbolic links to where the dotfiles need to be

DOTFILES_DIR="$(pwd)"

# shell/
ln -svf $DOTFILES_DIR/shell/alias ~/.alias

# shell/bash
ln -svf $DOTFILES_DIR/shell/bash/bashrc ~/.bashrc
ln -svf $DOTFILES_DIR/shell/bash/bash_profile ~/.bash_profile

# shell/zsh
ln -svf $DOTFILES_DIR/shell/zsh/zshrc ~/.zshrc

# colors/

ln -svfn $DOTFILES_DIR/colors ~/.bashcolors

# vim/

if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
fi

ln -svf $DOTFILES_DIR/vim/vimrc ~/.vimrc
ln -svfn $DOTFILES_DIR/vim/ftplugin ~/.vim/
ln -svfn $DOTFILES_DIR/vim/colors ~/.vim/


# GNU/Linux systems only!

if [[ $(uname -s) == "Linux" ]]; then

    # awesome/
    if [[ ! -d ~/.config/awesome ]]; then
        mkdir -p ~/.config
    fi

    ln -svfn $DOTFILES_DIR/awesome/rc.lua ~/.config/awesome/rc.lua

    # urxvt/

    ln -svf $DOTFILES_DIR/urxvt/Xresources ~/.Xresources
    ln -svfn $DOTFILES_DIR/awesome/themes ~/.config/awesome/
fi

# OS X Systems only!
if [[ $(uname -s) == "Darwin" ]]; then

    if [[ ! -d ~/.iterm ]]; then
        mkdir ~/.iterm
    fi

    ln -svfn $DOTFILES_DIR/iterm2 ~/.iterm

fi
