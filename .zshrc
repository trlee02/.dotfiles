# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#  Shows the zsh startup times
# zmodload zsh/zprof
export ZSH="$HOME/.oh-my-zsh"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

ZSH_THEME="powerlevel10k/powerlevel10k"

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

# eval "$(starship init zsh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(zoxide init zsh)"

export EDITOR='/home/linuxbrew/.linuxbrew/bin/nvim'

# if nvim is built from source
# export PATH="/home/tristan/Applications/nvim-linux64/bin:$PATH"
# export PATH="$HOME/.local/bin:$PATH"

alias sshcapstone="ssh capstone@172.22.0.1"
alias sshpi="ssh tristan@10.243.153.59"
alias sshjetson="ssh tristan@172.22.0.5"
alias suggest="gh copilot suggest"
alias sdn="shutdown now"
alias cl="clear"
alias east='tools/docker/elpis/build.bash scons ecu=east config=r1x'
alias tristan-gh="eval \$(ssh-agent -s) && ssh-add ~/.ssh/tristan_ed25519"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# ZVM_KEYTIMEOUT=0.3

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

source <(fzf --zsh)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zprof

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export GITLAB_TOKEN=rivpat-sWqb-bNWYa7yG9wwsWv5
export PATH=$HOME/.local/share/nvim/mason/bin:$PATH

export PATH="$HOME/.local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

eval "$(direnv hook zsh)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init --path)"

