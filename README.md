# dotfiles

### .init.vim / .vimrc
Neo(Vim) configuration for JavaScript, Ruby and Python development. Using the [vim-plug](https://github.com/junegunn/vim-plug) plugin manager for fast parallel installation and [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) for easy switching between Vim splits and tmux panes.

### .zshrc
Zsh configuration with improved autocompletion, [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and history lookup.

### .tmux.conf
tmux configuration with the other half of the [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) integration.

### Vagrantfile / provisioning
Vagrant (Debian/Ubuntu-based) box setup for quickly spinning up a fresh development and testing environment. The various provisioning scripts can be used to automatically install and configure any required components (e.g. nvm/Node.js/npm, rbenv/ruby-build/Ruby/Rails). Running the bash scripts on your non-Vagrant machine will work after adding/removing the sometimes necessary sudo prefixes.

### .profile
Setup for local environment variables, including the [xcape](https://github.com/alols/xcape) utility to use the Caps Lock key as an Esc when tapped and as a Ctrl when held down. Recommended for Emacs users as well.

## Installation
Clone the repository (or download the [zip file](https://github.com/davidkumru/dotfiles/archive/master.zip)):
```
git clone https://github.com/davidkumru/dotfiles.git
```
Edit the makesymlinks.sh bash script to include your configuration files and destination directories as variables.

Run the bash script to create symlinks to your local dotfiles:
```
./makesymlinks.sh
```
