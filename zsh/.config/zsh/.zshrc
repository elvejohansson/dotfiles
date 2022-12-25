# Clear terminal when starting a new shell
clear

# Enviroment variables
EDITOR=nvim
TERM=alacritty
export GPG_TTY=$(tty)
export PATH="$PATH:$HOME/.local/bin"

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

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Check if sources exist and them source them
[ -f "$ZDOTDIR/alias.zsh" ] && source $ZDOTDIR/alias.zsh
[ -f "$ZDOTDIR/theme.zsh" ] && source $ZDOTDIR/theme.zsh
[ -f "$ZDOTDIR/git.zsh" ] && source $ZDOTDIR/git.zsh

# Plugins
[ -f "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ] && source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
