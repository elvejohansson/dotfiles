# Enviroment variables
EDITOR=nvim
#TERM=alacritty
#export TERMINFO=/usr/share/terminfo
export XDG_CONFIG_HOME="$HOME/.config"

export GPG_TTY=$(tty)
export PATH="$PATH:$HOME/.local/bin"
export NVM_DIR="$HOME/.nvm"
export AWS_PROFILE="default"
export KUBE_CONFIG_PATH="$HOME/.kube/config"

# Darwin specific exports
if [[ $(uname) == "Darwin" ]] then
  # We are running MacOS
  export PATH="/opt/homebrew/bin:$PATH"
  export PATH="/opt/homebrew/sbin:$PATH"
  export PATH="/opt/homebrew/opt:$PATH"
  export PATH="/opt/homebrew/include:$PATH"
  export HOMEBREW_NO_AUTO_UPDATE=1

  export PATH="$PATH:/Users/elve/Library/Application Support/Coursier/bin"

  export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"

  export ANDROID_HOME="/Users/elve/Library/Android/sdk"
fi

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
HISTSIZE=2500
SAVEHIST=2500
HISTFILE=~/.cache/.histfile

# Autocompletion
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Check if sources exist and them source them
[ -f "$ZDOTDIR/alias.zsh" ] && source $ZDOTDIR/alias.zsh
[ -f "$ZDOTDIR/theme.zsh" ] && source $ZDOTDIR/theme.zsh
[ -f "$ZDOTDIR/git.zsh" ] && source $ZDOTDIR/git.zsh

# Plugins
[ -f "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# NVM
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

[ -f "/Users/elve/.ghcup/env" ] && source "/Users/elve/.ghcup/env" # ghcup-env
