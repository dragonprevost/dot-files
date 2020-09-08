" Basics
set nocompatible
set number
set background=dark
set cursorline
set relativenumber
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
set colorcolumn=120


" Save cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Finding Files
set path+=**
set wildmenu
set wildignore+=*.pyc
set wildignore+=**/node_modules/**

" Status Line
set laststatus=2
set statusline=\ %f

" Plugins
call plug#begin('~/.vim/plugged')
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jpo/vim-railscasts-theme'
Plug 'joshdick/onedark.vim'
call plug#end()

colorscheme onedark

" Remove trailing white space
autocmd BufWritePre * %s/\s\+$//e
