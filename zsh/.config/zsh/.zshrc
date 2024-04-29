source $ZDOTDIR/utils.zsh

#TERM=alacritty
export TERMINFO=/usr/share/terminfo
export XDG_CONFIG_HOME="$HOME/.config"

export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
export AWS_PROFILE="default"
export KUBE_CONFIG_PATH="$HOME/.kube/config"

# Go
export PATH="$PATH:$(go env GOPATH)/bin"

export PATH="$PATH:$HOME/.bun/bin"

# Colors
autoload -Uz colors && colors

# Options
setopt autocd
zle_highlight=('paste:none')
stty stop undef
unsetopt BEEP

# History
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
HISTFILE=~/.cache/.histfile
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS

# Autocompletion
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

source $ZDOTDIR/alias.zsh
source $ZDOTDIR/theme.zsh
source $ZDOTDIR/git.zsh

# Plugins
source_plugin "zsh-users/zsh-syntax-highlighting"
source_plugin "zsh-users/zsh-autosuggestions"
source_plugin "joshskidmore/zsh-fzf-history-search"

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -f "/Users/elve/.ghcup/env" ] && source "/Users/elve/.ghcup/env" # ghcup-env
