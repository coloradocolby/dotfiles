
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
ZSH_THEME="agnoster"
ZSH="${HOME}/.oh-my-zsh"
plugins=(git zsh-autosuggestions shrink-path)
source $ZSH/oh-my-zsh.sh

export PATH=~/bin:~/.local/bin:~/bin/statusbar:~/go/bin:$PATH:~/Monthly/stx
export TERMINAL="st"
export EDITOR="nvim"
# in zsh shell when tab completing sometimes phantom letters
# persist and cannot be deleted. Setting the following variable
# seems to fix that. @ref https://stackoverflow.com/questions/19305291
export LANG=en_US.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"

alias dev="~/Dev"
alias reload="source ~/.zshrc"
alias privateip="hostname -I"
alias publicip="curl icanhazip.com"
alias xclip="xclip -selection c" # now pipe to clipboard like echo 'colby thomas' | xclip
alias clear="clear && printf '\e[3J'"
alias skrrrt="~/Dev/skrrrt"
alias m="cd ~/monthly"
alias ms="cd ~/monthly/stx"
alias mf="cd ~/monthly/frontend"
alias mb="cd ~/monthly/backend"
alias df="cd ~/dotfiles"
alias x="exit"
alias q="clear"
alias tmux="tmux -2" # keep colorscheme in tmux
alias gotop="gotop --mbps -f"

alias v='nvim'
alias vim="nvim"
alias f='fzf --height=90% --preview "bat --style=numbers --color=always --line-range :500 {}" --preview-window right,border-left  --padding=0'
alias fzg='nvim "$(git ls-files | f)"'
alias vd='cd ~/dotfiles && fzg'

# DOCKER
alias d-ra='docker rmi -f $(docker images -aq)' # Remove all images
alias d-rav='docker rm -vf $(docker ps -aq)'    # Remove all volumes
alias d-sac='docker stop $(docker ps -a -q)'    # Stop all containers
alias d-rac='docker rm -f $(docker ps -a -q)'   # Remove all containers
alias d-srac='d-sac && d-rac'                   # Stop and remove all containers
alias d-sp='docker system prune -af --volumes'  # Remove entire docker system

alias luamake=/home/colby/src/language-servers/lua/lua-language-server/3rd/luamake/luamake

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
