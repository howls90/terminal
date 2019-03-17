# Terminal

List of tools for my day-to-day work.
This configuration was tested in Gnome Terminal.

## Installation

### NVIM
```
$ cp init.vim ~/.conf/nvim
:BundleInstall
```

### TMUX
```
$ cp tmux.conf ~/.tmux/
$ cp tmux.conf.local ~/.tmux
```

### Fish
```
$ cp conf.fish ~/.config/fish
```

### Automatic update
```
cp /tmp
git clone https://github.com/howls90/terminal.git 
cd terminal
mv conf.fish ~/.config/fish
mv tmux.conf ~/.tmux/
mv tmux.conf.local ~/.tmux
mv init.vim ~/.conf/nvim
vim -c "BundleInstall" -c "q" -c "q"
```
