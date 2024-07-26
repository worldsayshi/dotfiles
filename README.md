
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
fc-cache -f -v
```
Or, for Windows, download and install [this font file](https://github.com/wclr/my-nerd-fonts/blob/master/Consolas%20NF/Consolas%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf), and set it to be used in the Terminal Appearence settings.

```bash
brew install jesseduffield/lazygit/lazygit
```

```bash
ln -s $(pwd)/lvim/* ~/.config/lvim
```
