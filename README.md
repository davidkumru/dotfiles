# dotfiles
My dotfiles files for Debian/Ubuntu-based distros (and possibly OS X).

### .init.vim / .vimrc
Neo(Vim) configuration for JavaScript, Ruby and Python development. Using the [vim-plug](https://github.com/junegunn/vim-plug) plugin manager for fast parallel installation and [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) for easy switching between Vim splits and tmux panes.

### .zshrc
Zsh configuration with improved autocompletion, [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and history lookup.

### .tmux.conf
tmux configuration with the other half of the [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) integration.

### Vagrantfile / provisioning
Vagrant (Debian/Ubuntu-based) box setup for quickly spinning up a fresh development and testing environment. The various provisioning scripts can be used to automatically install any required components (e.g. nvm/Node.js/npm, rbenv/ruby-build/Ruby/Rails). Running the bash scripts on your non-Vagrant machine will work after adding/removing the sometimes necessary sudo prefixes.

### .profile
Setup for local environment variables, including the [xcape](https://github.com/alols/xcape) utility to use the Caps Lock key as an Esc when tapped and as a Ctrl when held down. Recommended for Emacs users as well.

## Installation
Configure makesymlinks.sh to include your configuration files and destination directories. Run the bash script to create symlinks to your local dotfiles.
