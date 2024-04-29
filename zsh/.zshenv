ZDOTDIR=$HOME/.config/zsh

export EDITOR=nvim
#TERM=alacritty

export PATH="$PATH:$HOME/.local/bin"

if [[ $(uname) == "Darwin" ]] then
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/opt/homebrew/sbin:$PATH"
    export PATH="/opt/homebrew/opt:$PATH"
    export PATH="/opt/homebrew/include:$PATH"

    export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"

    export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"

    export ANDROID_HOME="$HOME/Library/Android/sdk"
fi

. "$HOME/.cargo/env"

