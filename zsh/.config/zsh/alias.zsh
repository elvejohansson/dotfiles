##############################
#             ZSH            #
##############################
alias rconf="source $ZDOTDIR/.zshrc"
alias econf="$EDITOR $ZDOTDIR/.zshrc"
alias ealias="$EDITOR $ZDOTDIR/alias.zsh"



##############################
#             Git            #
##############################
alias g="git"
alias gs="g status"
alias gc="g commit -m"
alias ga="g add"
alias gf="g fetch"
alias gm="g merge"
alias gp="g push"
alias gb="g branch"
alias gch="g checkout"
alias gcb="g checkout -b"
alias gd="g diff"



##############################
#        Pacman & AUR        #
##############################
alias pacin="sudo pacman -S"
alias pacrm="sudo pacman -Rns"
alias pacup="sudo pacman -Syyu"
alias pacop="pacman -Qtd"



##############################
#   Directories & movement   #
##############################
alias ls=" ls -alh --color=auto"
alias ..=" cd .."
alias ...=" cd ../.."



##############################
#            Other           #
##############################
alias ffs="sudo !!"
