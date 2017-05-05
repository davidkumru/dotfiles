# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# prompt
PS1="%B%n%b %~ %% "

# git prompt
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f'
zstyle ':vcs_info:*' formats       \
    '%F{5}%F{2}%b%F{5}%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git cvs svn

vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'

# options
# export TERM="xterm-256color"
# export KEYTIMEOUT=1
setopt autocd
setopt correctall
setopt histignoredups
setopt noclobber
setopt globdots
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# history
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '^[[A' up-line-or-beginning-search
bindkey '^[[B' down-line-or-beginning-search

# navigation
alias ls='ls -G'
alias lsa='ls -A -G'
alias cl="clear"
alias o="open"
alias f="find . -iname"
alias rmd="rm -rf"
alias u="cd .."
alias p="cd -"
alias :q="exit"
cd() { builtin cd "$@" && ls; }
alias tree="tree -L 2 -C --dirsfirst --noreport"
alias treea="tree -a -L 2 -C --dirsfirst --noreport"

# dotfiles
alias loadzsh="source ~/.zshrc"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxc="vim ~/.tmux.conf"

# tmux
alias tmuxn="tmux new -s"
alias tmuxa="tmux a -t"
alias tmuxl="tmux ls"
alias tmuxk="tmux kill-session -t"

# git
alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gap="git add -p"

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# kiex
# [[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# kerl
# . ~/.kerl/19.2/activate

# phoenix
alias ps="iex -S mix phoenix.server"

# zsh packages
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
