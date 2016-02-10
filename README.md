# My doot files

These are my doot files. You are free to use any of my dotfiles as well as modify them to your liking, but you do so at your own risk.

**DISCLAIMER:** My dot files can and WILL change whenever I feel like it. Installing these can and will replace your current configuration. Don't expect for the changes to react nicely on your system!

## Things you need to install (Linux)
- i3
- vim (Vundle installed automagically through install.sh)
- urxvt
- zsh (oh-my-zsh through install.sh)
- fcitx + libpinyin
- feh
- Rofi

## Things you need to install (OSX)
- iTerm2
- vim
- homebrew

## Fonts
- Hack
- Droid Sans

## Installation

This is easy. First, clone the repository somewhere on your machine:
```
git clone git@github.com:xiaobai/dotfiles.git dootFiles
```

`cd` into the directory:
```
cd dootFiles/
```

and run install.sh:
```
./install.sh
```

The dotfiles should be symbolically linked to the right places, and should work out of the box if you are using the appropriate software.

## Notes
- Powerline fonts can be found on github (powerline/fonts.git)
- Installs oh-my-zsh and Vundle for you, if they are not already present.
- To fully get i3 up and running, read i3notes.md
