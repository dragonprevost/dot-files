" Basics
set nocompatible
set number
set background=dark
set cursorline
set relativenumber
set backspace=indent,eol,start
syntax on

" Line number highlighting
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNr cterm=NONE ctermbg=15 ctermfg=8 gui=NONE guibg=#ffffff guifg=#d70000

" Tab Spacing
set tabstop=2
set smartindent
set shiftwidth=2
set softtabstop=2
set expandtab


" Save cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Finding Files
set path+=**
set wildmenu

" Status Line
set laststatus=2
set statusline=\ %f

" Plugins
call plug#begin('~/.vim/plugged')
" Plugins go here... :D
call plug#end()

" Remove trailing white space
autocmd BufWritePre * %s/\s\+$//e
