# Install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install fonts
git clone https://github.com/powerline/fonts.git --depth=1 ./font-install
cd fonts-install
./install.sh
cd ..
rm -rf fonts-install

# Make sure files dont already exist
rm ~/.zshrc
rm ~/.vimrc
rm -rf .vim/colors

# Create links
ln -s "$PWD/zshrc" ~/.zshrc
ln -s "$PWD/vimrc" ~/.vimrc
ln -s "$PWD/colors" ~/.vim/colors
