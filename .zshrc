# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
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
zstyle ':vcs_info:git:*' formats '%b'

vcs_info_wrapper() {
  vcs_info
  if [ -n $vcs_info_msg_0_ ]; then
    echo $vcs_info_msg_0_
  fi
}

RPROMPT=$'$(vcs_info_wrapper)'

# options
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

# homebrew
alias bu="brew update"
alias bo="brew outdated"
alias bug="brew upgrade"
alias bc="brew cleanup"

# git
alias gs="git status"
alias gp="git pull"
alias gb="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdl="git diff HEAD^ HEAD"
alias ga="git add -p"
alias gc="git commit -m"

# docker
alias dr="docker"
alias drl="docker container ls -a && docker image ls -a"
alias dc="docker compose"
alias dsp="docker system prune -a --volumes"

# terraform
alias tfv="terraform fmt && terraform validate"
alias tfa="terraform apply"
alias tfd="terraform destroy"

# rust
alias cr="cargo run"
alias ru="rustup update"

# elixir
alias ps="iex -S mix phx.server"
alias tw="mix test.watch"
alias tws="mix test.watch --stale"
alias mc="mix clean --deps && mix deps.clean --all"
alias mu="mix local.hex --force && mix local.phx --force"
export ERL_AFLAGS="-kernel shell_history enabled"

# node
alias npl="npm list -g --depth=0"
alias npu="npm install -g npm"
