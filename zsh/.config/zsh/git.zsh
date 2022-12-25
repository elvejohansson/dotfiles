autoload -Uz vcs_info
precmd() { vcs_info }

# Very crude way of detecting git directory, needs to be reworked
if [ -d .git ]; then
  zstyle ':vcs_info:git:*' formats $'%F{blue}\Ue0a0%f %F{green}%b%f'
fi

setopt PROMPT_SUBST
