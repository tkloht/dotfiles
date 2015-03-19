execute pathogen#infect()
syntax enable
set background=dark
set number
set nocompatible
set nobackup
set nowritebackup
set hlsearch
set autoindent
colorscheme solarized 
set mouse=a
set smarttab
set tabstop=2

au BufRead,BufNewFile *.gant set filetype=groovy

"open nerdtree automatically if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
"close vim if only open window is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

