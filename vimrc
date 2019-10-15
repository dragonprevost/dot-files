" Basics
set nocompatible
set number
set relativenumber
syntax on
filetype plugin on

" Set colorscheme here (You have lots of options)
colorscheme neodark

" Tab Spacing
set tabstop=2
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2
set expandtab

" Finding Files
set path+=**
set wildmenu

" Status Line
set laststatus=2
set statusline=\ %f

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'tsx'] }
Plug 'https://github.com/zefei/cake16.git'
call plug#end()

" Tag Jumping
command! MakeTags !ctags -R .

" File Browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Templates / Snippets
nnoremap ,component :-1read $HOME/.vim/templates/component.js<CR>3Gwce
