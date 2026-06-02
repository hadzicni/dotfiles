# Aliases
alias ls='eza'
alias ll='eza -lah --icons --git'
alias tree='eza --tree'
alias cat='bat'
alias lg='lazygit'
alias gc='git clone'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias ff='fastfetch'
alias reload='source ~/.zshrc'

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"

export EDITOR="nvim"
