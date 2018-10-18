
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
