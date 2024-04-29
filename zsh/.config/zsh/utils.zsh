

function source_file_if_exists() {
    [ -f "$1" ] && source $1
}

function source_plugin() {
    PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
    PLUGIN_LOCATION="$ZDOTDIR/plugins/$PLUGIN_NAME"

    if [ -d "$PLUGIN_LOCATION" ]; then
        source_file_if_exists "$PLUGIN_LOCATION/$PLUGIN_NAME.plugin.zsh"
        source_file_if_exists "$PLUGIN_LOCATION/$PLUGIN_NAME.zsh"
    else
        git clone "https://github.com/$1.git" "$PLUGIN_LOCATION"
        source_plugin $1
    fi
}

