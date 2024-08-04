Install the Hack Nerd Font and set it to be used in the Terminal Appearence settings.

```bash
brew install jesseduffield/lazygit/lazygit
mkdir ~/git_apps && cd ~/git_apps && git clone https://github.com/joshmedeski/tmux-nerd-font-window-name.git
```

```bash
ln -s $(pwd)/lvim/* ~/.config/lvim
ln -s $(pwd)/tmux/* ~/.config/tmux
#ln -s $PWD/workspace/dotfiles/tmux/tmux.conf $PWD/.config/tmux/tmux.conf
```
