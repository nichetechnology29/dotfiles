fastfetch
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/diggy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# make zsh use a readable prompt as a fallback idk
PROMPT='%F{green}%n@%m%f %F{cyan}%~%f %% '

# ignore dups in history
setopt hist_ignore_dups
# clear alias
alias clear='clear && fastfetch'
# important dotfiles alias
alias dot='git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# source (make sure these are already installed by pacman/yay)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# bindkeys for plugin
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# LEAVE THIS AT THE END
eval "$(starship init zsh)"
