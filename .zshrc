# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
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

# homebrew
alias bu="brew update"
alias bo="brew outdated && brew cask outdated"
alias bug="brew upgrade && brew cask upgrade"
alias bc="brew cleanup"

# tmux
alias tmuxn="tmux new -s"
alias tmuxa="tmux a -t"
alias tmuxl="tmux ls"
alias tmuxk="tmux kill-session -t"

# git
alias gs="git status"
alias gp="git pull"
alias gb="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdl="git diff HEAD^ HEAD"
alias ga="git add -p"
alias gc="git commit -m"

# vagrant
# alias vt="vagrant status"
# alias vu="vagrant up"
# alias vs="vagrant ssh"
# alias vh="vagrant halt"

# rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

if (( $+commands[rbenv] )); then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# phoenix
alias ps="iex -S mix phx.server"
export ERL_AFLAGS="-kernel shell_history enabled"

# postgresql
# for auto-load run: brew services start postgresql
alias pgs="pg_ctl -D /usr/local/var/postgres start"
alias pgq="pg_ctl -D /usr/local/var/postgres stop"
export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"

# zsh packages
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
