
My personal vim configuration
# Instructions For Mac OS Install
### 1. Install Pathogen With Following Dir 
```
cd
mkdir -p .vim/{autoload,colors,syntax,plugin,spell,config} \n
mv .vimrc .vim/vimrc
ln -s .vim/vimrc .vimrc
cd ~/.vim
git clone https://github.com/tpope/vim-pathogen.git pathogen
cd autoload
ln -s ../pathogen/autoload/pathogen.vim 
```
### 2. Install NERDTree
```
cd ~/.vim
mkdir -p bundle
cd bundle
git clone https://github.com/scrooloose/nerdtree.git nerdtree
```
### 3. Replace your .vimrc with the one provided or add the following to your exisiting ~/.vimrc file
```
.vimrc is located in your home dir ~/.vimrc
```
### Powerline Font Installation
```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```
