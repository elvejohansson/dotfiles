# Zsh
alias rconf="source $ZDOTDIR/.zshrc"
alias econf="$EDITOR $ZDOTDIR/.zshrc"
alias ealias="$EDITOR $ZDOTDIR/alias.zsh"

# Git
alias gs="git status"
alias ga="git add"
alias gaa="git add -A"
alias gb="git branch -a"
alias gc="git commit -s"
alias gd="git diff HEAD"
alias gds="git diff HEAD --staged"
alias gprune="git fetch --prune origin"

# Kubernetes
alias get-clusters="kubectl config get-contexts"
alias set-cluster="kubectl config use-context"
alias get-pods="kubectl get pods -A"

# Terraform
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"

# Pacman & AUR
alias pacin="sudo pacman -S"
alias pacrm="sudo pacman -Rns"
alias pacup="sudo pacman -Syyu"
alias pacop="pacman -Qtd"

# Directories etc.
alias ls=" ls -alh --color=auto"
alias ..=" cd .."
alias ...=" cd ../.."

# Misc.
alias ffs="sudo !!"
