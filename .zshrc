# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/david/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PS1="%~ %% "

setopt autocd
setopt correctall
setopt histignoredups
setopt noclobber
setopt globdots
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '\eOA' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search

#bashrc settings
alias loadzsh="source ~/.zshrc"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxc="vim ~/.tmux.conf"
alias profile="vim ~/.profile"

alias update="sudo apt-get update && sudo apt-get upgrade"
alias install="sudo apt-get install"

alias ls='ls --color=auto --group-directories-first'
alias o="xdg-open"
alias f="find . -iname"
alias u="cd .."
alias p="cd -"
alias :q="exit"

cd() { builtin cd "$@" && ls; }

alias soft="xdg-open ~/Dropbox/Files/Software/Software.ods"

alias sd="sudo shutdown -h now"
alias rs="sudo shutdown -r now"
alias lo="xfce4-session-logout --logout --fast"

alias tmuxn="tmux new -s"
alias tmuxa="tmux a -t"
alias tmuxd="tmux d -t"
alias tmuxl="tmux ls"
alias tmuxk="tmux kill-session -t"

# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
# source /home/david/zshtemp/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh