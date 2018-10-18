syntax on
set t_Co=256

set nocompatible
" Initialisation de pathogen
call pathogen#infect()
call pathogen#helptags()

set number

filetype plugin indent on
syntax on
runtime! config/**/*.vim

autocmd VimEnter * NERDTree

autocmd VimEnter * wincmd p

set mouse=a
let g:NERDTreeMouseMode=3
