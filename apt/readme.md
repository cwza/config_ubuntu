## Install by apt or snap
``` sh
# build-essential
sudo apt install build-essential
# nvim
sudo snap install --classic nvim
# zsh
sudo apt install zsh
sudo chsh $USER -s $(which zsh)
# ripgrep
sudo apt install ripgrep
# fd-find
sudo apt install fd-find
ln -s $(which fdfind) ~/.local/bin/fd
# bat
sudo apt install bat
ln -s $(which batcat) ~/.local/bin/bat
# fzf
sudo apt install fzf
```

## Install by rust
``` sh
cargo install git-delta
cargo install stylua
```
