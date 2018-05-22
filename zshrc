# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Themes in: ~/.oh-my-zsh/themes/
ZSH_THEME="gentoo"

# oh_my_zsh options
COMPLETION_WAITING_DOTS="true"

# Save all the history
HISTSIZE=130000
SAVEHIST=130000

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Make the above settings take place
source $ZSH/oh-my-zsh.sh

# Use vim keybindings to edit the command line
bindkey -v
bindkey '^R' history-incremental-search-backward

export EDITOR='vim'
export VISUAL='vim'
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS='--appdir=/Applications'
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"

if [[ "$(uname -s)" == "Darwin" ]]; then
  alias tmux="TERM=screen-256color-bce tmux"
fi
