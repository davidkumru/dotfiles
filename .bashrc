alias bashrc="vim ~/.bashrc"
alias source="source ~/.bashrc"

alias update="sudo apt-get update && sudo apt-get upgrade"
alias install="sudo apt-get install"

alias o="xdg-open"
alias f="find . -iname"
alias u="cd .."
alias p="cd -"

alias soft="xdg-open ~/Dropbox/Files/Software/Software.ods"

cd() { builtin cd "$@" && ls; }

alias sd="sudo shutdown -h now"
alias rs="sudo shutdown -r now"
alias lo="xfce4-session-logout --logout --fast"

alias tmuxn="tmux new -s"
alias tmuxa="tmux a -t"
alias tmuxd="tmux d -t"
alias tmuxl="tmux ls"
alias tmuxk="tmux kill-session -t"
