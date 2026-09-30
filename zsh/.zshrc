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
eval "$(mise activate zsh)"

#Functions
brewup() {
  brew update || return
  local outdated
  outdated=$(brew outdated)
  if [[ -z $outdated ]]; then
    echo "Everything is up to date."
  else
    echo "$outdated"
    read -q "REPLY?Run upgrade? [y/N] " || { echo; return; }
    echo
    brew upgrade || return
  fi
  brew autoremove
  brew cleanup
}
