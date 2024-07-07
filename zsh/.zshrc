[[ ! -r /opt/homebrew/bin/brew ]] || eval "$(/opt/homebrew/bin/brew shellenv)"
[[ ! -r $HOME/.cargo/env ]] || source "$HOME/.cargo/env"
[[ ! -r /Users/claes/.opam/opam-init/init.zsh ]] || source /Users/claes/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
[[ ! -r /opt/homebrew/bin/fzf ]] || source <(fzf --zsh)

export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
export PATH="$PATH:$HOME/go/bin"

alias vi="nvim"
alias vim="nvim"
alias v="nvim"
alias nv="nvim"
alias n="nvim"
