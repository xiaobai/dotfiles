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
if [[ ! -d ~/.oh-my-zsh ]]; then
    # Standard oh-my-zsh install line from htttps://ohmyz.sh
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# colors/

ln -svfn $DOTFILES_DIR/colors ~/.bashcolors

# vim/

if [[ ! -d ~/.vim ]]; then
    mkdir ~/.vim
fi

ln -svf $DOTFILES_DIR/vim/vimrc ~/.vimrc
ln -svfn $DOTFILES_DIR/vim/ftplugin ~/.vim/
ln -svfn $DOTFILES_DIR/vim/colors ~/.vim/

if [[ ! -d ~/.vim/bundle ]]; then
    # If vundle is not installed, then install it
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi


# GNU/Linux systems only!

if [[ $(uname -s) == "Linux" ]]; then

    # awesome/

    if [[ ! -d ~/.config/awesome ]]; then
        mkdir -p ~/.config/awesome
    fi

    ln -svfn $DOTFILES_DIR/awesome/rc.lua ~/.config/awesome/rc.lua
    ln -svfn $DOTFILES_DIR/awesome/themes ~/.config/awesome/

    # i3/

    if [[ ! -d ~/.config/i3 ]]; then
        mkdir -p ~/.config/i3
    fi

    ln -svfn $DOTFILES_DIR/i3/config ~/.config/i3/config


    # urxvt/

    ln -svf $DOTFILES_DIR/urxvt/Xresources ~/.Xresources
fi

# OS X Systems only!
if [[ $(uname -s) == "Darwin" ]]; then

    if [[ ! -d ~/.iterm ]]; then
        mkdir ~/.iterm
    fi

    ln -svfn $DOTFILES_DIR/iterm2 ~/.iterm

fi
