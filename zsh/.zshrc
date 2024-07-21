[[ ! -r /opt/homebrew/bin/brew ]] || eval "$(/opt/homebrew/bin/brew shellenv)"
[[ ! -r $HOME/.cargo/env ]] || source "$HOME/.cargo/env"
[[ ! -r /Users/claes/.opam/opam-init/init.zsh ]] || source /Users/claes/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
[[ ! -r /opt/homebrew/bin/fzf ]] || source <(fzf --zsh)
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

[[ ! -r /opt/homebrew/bin/oh-my-posh ]] || eval "$(oh-my-posh init zsh --config '~/.config/oh-my-posh/catppuccin_macchiato.omp.json')"
[[ ! -r /opt/homebrew/bin/starship ]] || eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
export PATH="$PATH:$HOME/go/bin"

alias vi="nvim"
alias vim="nvim"
alias v="nvim"
alias nv="nvim"
alias n="nvim"

if [ -e /opt/homebrew/bin/bat ]; then
	alias cat="bat"
fi
