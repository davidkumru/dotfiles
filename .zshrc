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

# options
export TERM="xterm-256color"
export KEYTIMEOUT=1
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
bindkey '\eOA' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search

# system
alias sd="sudo shutdown -h now"
alias rs="sudo shutdown -r now"
alias lo="xfce4-session-logout --logout --fast"

# apt-get
alias update="sudo apt-get update && sudo apt-get upgrade"
alias install="sudo apt-get install"

# navigation
alias ls='ls --color=auto --group-directories-first'
alias lsa='ls -A --color=auto --group-directories-first'
alias cl="clear"
alias o="xdg-open"
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
alias zshrc="nvim ~/.zshrc"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias vimrc="nvim ~/.vimrc"
alias tmuxc="nvim ~/.tmux.conf"

# tmux
alias tmuxn="tmux new -s"
alias tmuxa="tmux a -t"
alias tmuxl="tmux ls"
alias tmuxk="tmux kill-session -t"

# npm
alias live-server="live-server --no-browser"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# rails
alias rails serverb="rails server -b 0.0.0.0"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# packages
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
