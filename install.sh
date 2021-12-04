echo 'installing base tools ...'
yay -Syu
yay -S alacritty neovim tmux zsh curl fzf ripgrep python python-pip
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
