eval "$(/opt/homebrew/bin/brew shellenv)"

source "$HOME/.cargo/env"

alias vi="nvim"
alias vim="nvim"

export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# opam configuration
[[ ! -r /Users/claes/.opam/opam-init/init.zsh ]] || source /Users/claes/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
