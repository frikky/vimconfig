" Enables line numbers
set number

" Enables mouse support.
set mouse=a

" Incremental search
set incsearch

" Syntax highlighting
filetype plugin on
syntax enable

" Shows status line
set laststatus=2

"Tab stuff
set shiftwidth=8
set tabstop=8
set smarttab

" dunno
set ai
set si
imap hat 

" Newline for stuff
set wrap

"autocmd FileType c set cindent

" Creates colorcolumn 
let &colorcolumn=81

"Sets leader key
let mapleader = ","

" Sets autocommand for makefiles
autocmd FileType makefile setlocal ts=8 sts=8 sw=8
autocmd FileType js setlocal ts=4 sts=4 sw=4 
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Python compile/run thing
au FileType python nnoremap <leader>t :!python %

" Bash compile/run thing
au FileType sh nnoremap<leader>t :!chmod u+x %
au FileType sh nnoremap<leader>c :./%

" c compile/run thing
au FileType c nnoremap <leader>t :!gcc % 
au FileType c nnoremap <leader>c :./a.out

" Java compile/run thing
au FileType java nnoremap <leader>t :!javac %
au FileType java nnoremap <leader>c :!java %


" Remaps key
nnoremap <Leader>y "*y
nnoremap <Leader>p "*p
nnoremap <Leader>P "*P

" Sets the colorscheme 
set background=dark
colorscheme solarized 
