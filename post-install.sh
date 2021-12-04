echo 'installing omz plugins ...'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm ~/.zshrc
cp ./omz/.zshrc ~/.zshrc
omz reload
echo 'installing nvm ...'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
omz reload
clear
echo 'installing node 16 ...'
nvm install 16
npm i -g yarn
npm i -g npm@8.2.0
clear
echo 'installing neovim binaries ...'
yarn global add neovim
pip install virtualenv neovim
pip install pynvim --upgrade
clear
echo 'copying dotfiles ...'
cp ./nvim ~/.config/nvim
cp ./tmux/.tmux.conf ~/.tmux.conf
cp ./alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
clear
echo 'installing vim-plug ...'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo 'installing tmux plugin manager'
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm



