# dotfiles

### .init.vim / .vimrc
Neo(Vim) configuration for Elixir, Rust, JavaScript and Ruby development. It uses the [vim-plug](https://github.com/junegunn/vim-plug) plugin manager for fast parallel installation and [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) for easy switching between Vim splits and tmux panes.

### .zshrc
Zsh configuration with improved autocompletion, [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) and history lookup.

### .tmux.conf
tmux configuration with the other half of the [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) integration.

### .profile
Setup for local environment variables, including the [xcape](https://github.com/alols/xcape) utility to use the Caps Lock key as Esc when tapped and as Ctrl when held down.

## Usage
Clone the repository (or download the [zip file](https://github.com/davidkumru/dotfiles/archive/master.zip)):
```bash
git clone https://github.com/davidkumru/dotfiles.git
```
Edit the makesymlinks.sh bash script to include your configuration files and destination directories as variables.

Run the bash script to create symlinks to your local dotfiles:
```bash
./makesymlinks.sh
```
