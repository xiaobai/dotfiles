# My doot files

These are my doot files. You are free to use any of my dotfiles as well as modify them to your liking, but you do so at your own risk.

**DISCLAIMER:** My dot files can and WILL change whenever I feel like it. Installing these can and will replace your current configuration. Don't expect for the changes to react nicely on your system!

## How to bootstrap (OS X)
1. Install Homebrew using Safari
2. Install your preferred browser and other apps through homebrew caskroom.
3. Install vim, git, tmux, zsh, and iTerm2.
    * Maybe force myself to install Vundle and oh-my-zsh manually?
4. Install Hack through homebrew/fonts
    * ` brew tap caskroom/fonts `
    * ` brew cask install font-hack `
5. Clone this repository and run the installation script
6. Change your shell to zsh and configure iTerm2
7. Confirm that all necessary dependencies and software are installed
8. Start programming!

## How to bootstrap (Linux)
Coming soon!!!!! For now, refer to the things you need to install on Linux

## Things you need to install (Linux)
- vim
- zsh
- urxvt
- i3
- fcitx + libpinyin
- feh
- Rofi

## Fonts I use and like
- Hack
- Droid Sans

## Installation

First and foremost, please make sure you have all the dependencies installed.

Installation is easy. First, clone the repository somewhere on your machine:
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
- Configure IRC clients separately.
- Installs oh-my-zsh and Vundle for you, if they are not already present. (TODO: Think about this one?)
- Powerline fonts can be found on github (powerline/fonts.git) [Linux]
- To fully get i3 up and running, read i3notes.md [Linux]
- Please insert the correct homebrew api key into the .zshrc file [OSX]
