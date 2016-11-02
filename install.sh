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

# shell/colors
ln -svfn $DOTFILES_DIR/shell/colors/ ~/.colors

# tmux/

ln -svf $DOTFILES_DIR/tmux/tmux.conf ~/.tmux.conf

# vim/

if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
fi

ln -svf $DOTFILES_DIR/vim/vimrc ~/.vimrc
ln -svfn $DOTFILES_DIR/vim/ftplugin ~/.vim/
ln -svfn $DOTFILES_DIR/vim/colors ~/.vim/

# GNU/Linux systems only!

if [[ $(uname -s) == "Linux" ]]; then

    # i3/

    if [[ ! -d ~/.config/i3 ]]; then
        mkdir -p ~/.config/i3
    fi

    if [[ ! -d ~/.config/i3blocks ]]; then
        mkdir -p ~/.config/i3blocks
    fi

    ln -svfn $DOTFILES_DIR/i3/config ~/.config/i3/config
    ln -svfn $DOTFILES_DIR/i3/i3blocks ~/.config/i3blocks/config


    # urxvt/

    ln -svf $DOTFILES_DIR/urxvt/Xresources ~/.Xresources
fi

# OS X Systems only!
if [[ $(uname -s) == "Darwin" ]]; then

    ln -svfn $DOTFILES_DIR/tmux/tmux-osx ~/.tmux-osx

fi
