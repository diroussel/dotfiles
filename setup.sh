

TODO check PWD == ~
TODO check .dotfiles folder exists

mkdir -p .vim
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/local/start/lightline || true

# Setup links

ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.zshrc .zshrc

