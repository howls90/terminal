# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
rvm default

# isao
alias isao "$HOME/projects/isao/isao"

# nvim
export VTE_VERSION="100"

# tmux configuration
export TERM=xterm-256color

# Git shortcuts
alias ga='git add'
alias gst='git status'
alias gc='git commit'
alias gco='git checkout'
alias gl='git pull'
alias gpom="git pull origin master"
alias gp='git push'
alias gd='git diff | mate'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'

# Others
alias ..='cd ..'
alias apt-get='sudo apt-get'
alias l='lsicons'
alias dc='docker-compose'
alias dcu='docker-compose up'
alias dcd="docker-compose down"
alias dpa='docker ps -a'

# Golang
set -x GOROOT /usr/local/go
set -x GOPATH $HOME/.go
set -x PATH $GOPATH/bin $GOROOT/bin $PATH
