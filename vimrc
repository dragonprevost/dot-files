" Basics
syntax enable
set number
set cursorline
set relativenumber
set background=dark
set colorcolumn=80
set incsearch

" Indentation
set tabstop=2
set smartindent
set shiftwidth=2
set softtabstop=2
set expandtab

" File Search
set path+=**
set wildmenu
set wildignore+=*.pyc
set wildignore+=**/node_modules/**

" Status Line
set laststatus=2
set statusline=\ %f

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox

" Remove Trailing Whitespace
autocmd BufWritePre * %s/\s\+$//e

" Save Cursor Position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "nor    mal! g`\"" | endif
endif

" Jump to Definition
map <Space> <Leader>
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

