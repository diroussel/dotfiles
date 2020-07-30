

TODO check PWD == ~
TODO check .dotfiles folder exists

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup Vim
mkdir -p .vim
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/local/start/lightline || true

# Setup links

ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.bashrc .bashrc

# Add ASDF plugins
for plugin in `echo helm java k3d kind nodejs ruby terraform yarn`; do asdf plugin add $plugin; done

# starship cofig
cp ~/.dotfiles/starship.toml ~/.config/starship.toml

