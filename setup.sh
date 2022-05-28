

TODO check PWD == ~
TODO check .dotfiles folder exists

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions to oh-my-zsh directory
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Setup Vim
mkdir -p .vim
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/local/start/lightline || true

# Setup links

ln -s .dotfiles/.vimrc .vimrc
ln -s .dotfiles/.zshrc .zshrc
ln -s .dotfiles/.bashrc .bashrc
ln -s .dotfiles/.bash_profile .bash_profile
ln -s .dotfiles/starship.toml .config/starship.toml

# App links
# from: https://www.sublimetext.com/docs/3/osx_command_line.html
ln -s ~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/bin/subl

# Add ASDF plugins
for plugin in `echo helm java k3d kind nodejs ruby terraform yarn`; do asdf plugin add $plugin; done

