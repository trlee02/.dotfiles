ZVM_INIT_MODE=sourcing
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# auto complete
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' matcher-list '' 'r:|[._-]=**'

# Load Zsh's built-in Git info tool
autoload -Uz vcs_info 

precmd() {
    vcs_info
}

setopt prompt_subst  # Enable dynamic prompt substitution

PROMPT=$'%F{189}%B%n%F{147}@%F{219}%m%f%b %F{15}%~%F{105}${vcs_info_msg_0_}%f 
$ '


# export NVM_LAZY_LOAD=true
# export NVM_LAZY_LOAD_EXTRA_COMMANDS=('nvim')

setopt autocd extendedglob nomatch

# eval "$(starship init zsh)"

export EDITOR='/usr/bin/nvim'
#
# plugins
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
eval "$(zoxide init zsh)"
source <(fzf --zsh)

# aliases
alias sshpi="ssh tristan@10.243.153.59"
alias sshjetson="ssh tristan@172.22.0.6"
alias suggest="gh copilot suggest"
alias sdn="shutdown now"
alias code="code --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto --unity-launch"
alias ls="ls --color"
