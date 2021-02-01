set nocompatible
filetype plugin on
syntax enable 

" to fix for a strange highlighting problem?
set redrawtime=10000 

set autoindent
set number
set ruler

" allow syntax highlighting...checking if turned on first
set background=light
colorscheme elflord
if !exists("g:syntax_on")
    syntax enable
endif

" Cursor highlight settings
set cursorcolumn
set cursorline
highlight CursorColumn ctermbg=DarkGray cterm=NONE
highlight CursorLine ctermbg=DarkGray cterm=NONE 
nmap <silent> ,. :set cursorline! cursorcolumn!<CR>

" Visual highlight settings
highlight Visual ctermbg=Brown

set showmatch " highlight matching braces

" searching settings
set incsearch   " begin searching right away
set hlsearch
nmap <silent> ,/ :nohlsearch<CR>

" Tab settings 
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftwidth=4
set smarttab

" backspace settings (allow user to remove indents in insert mode)
set backspace=indent,eol,start

set pastetoggle=<F2>    " toggle on paste mode with F2

"--------------- Status line
" colors used in status line
hi User1 cterm=bold ctermbg=gray ctermfg=black
hi User2 ctermbg=darkgray ctermfg=darkgray
" formatting
set laststatus=2            " turn on by default
set statusline=%1*          " User1 colour
set statusline+=\ %F        " tail of the filename
set statusline+=%h          " help file flag
set statusline+=%m          " modified flag
set statusline+=%r          " read only flag
set statusline+=\ %y\ %*    " filetype
set statusline+=%2*         " User2 colour
set statusline+=%=          " left/right separator
set statusline+=%1*         " Switch back to User1
set statusline+=\ %c,       " cursor column
set statusline+=%l/%L       " cursor line/total lines
set statusline+=\ %P        " percent through file
set statusline+=\ %*
"---------------

" recognize .cfg, .tsk, .dk files as .sh files
au BufRead,BufNewFile *.cfg set filetype=sh
au BufRead,BufNewFile *.tsk set filetype=sh
au BufRead,BufNewFile *.dk set filetype=sh

" fortran settings
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
