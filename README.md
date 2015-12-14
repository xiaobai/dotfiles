# My doot files

These are my doot files. You are free to use any of my dotfiles as well as modify them to your liking, but you do so at your own risk.

**DISCLAIMER:** My dot files can and WILL change whenever I feel like it. Installing these can and will replace your current configuration. Don't expect for the changes to react nicely on your system!

## Dependencies
- Vundle
- oh-my-zsh
- feh (Setting wallpaper on Linux distros)

## Fonts
- Hack
- Tamsyn

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
- Need to install i3, urxvt, feh, etc. by yourself.
