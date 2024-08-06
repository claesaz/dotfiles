if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -f $HOME/.cargo.env ]; then
  source "$HOME/.cargo/env"
fi

if [ -f $HOME/.opam/opam-init/init.zsh ]; then
  source /Users/claes/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
fi

if [ -r /opt/homebrew/bin/fzf ]; then
  source <(fzf --zsh)
  export FZF_DEFAULT_OPTS=" \
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"
fi

if [ -r /opt/homebrew/bin/starship ]; then
  eval "$(starship init zsh)"
fi

if [ -r $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  bindkey '^ ' autosuggest-accept
fi

if [ -r /opt/homebrew/bin/bat ]; then
  alias cat="bat"
fi

if [ -r ~/VulkanSDK/1.3.290.0/setup-env.sh ]; then
  source ~/VulkanSDK/1.3.290.0/setup-env.sh
fi

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
export PATH="$PATH:$HOME/go/bin"

if [ -r ~/code/tada/tada ]; then
  export PATH="$PATH:$HOME/code/tada"
fi

if [ -r /opt/homebrew/bin/nvim ]; then
  alias vi="nvim"
  alias vim="nvim"
  alias v="nvim"
  alias nv="nvim"
  alias n="nvim"
  export EDITOR="/opt/homebrew/bin/nvim"
fi
