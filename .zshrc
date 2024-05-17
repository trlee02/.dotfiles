#  Shows the zsh startup times
# zmodload zsh/zprof
export ZSH="$HOME/.oh-my-zsh"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# ZSH_THEME="oxide"

export NVM_LAZY_LOAD=true
export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')

plugins+=(
  git
  zsh-syntax-highlighting
  zsh-nvm
  dirhistory
  vi-mode
)

source $ZSH/oh-my-zsh.sh

setopt autocd extendedglob nomatch

eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"

export EDITOR='/home/linuxbrew/.linuxbrew/bin/nvim'

# export PATH="/home/tristan/Applications/nvim-linux64/bin:$PATH"
# export PATH="$HOME/.local/bin:$PATH"

alias sshcapstone="ssh capstone@172.22.0.1"
alias sshpi="ssh tristan@10.243.153.59"
alias sshjetson="ssh tristan@172.22.0.5"
alias suggest="gh copilot suggest"
alias sdn="shutdown now"

# ZVM_KEYTIMEOUT=0.3

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zprof
