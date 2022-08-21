""""""""""""""""""""""""""""""""""""
" Line
""""""""""""""""""""""""""""""""""""
" show line numbers
set number


"""""""""""""""""""""""""""""""""""""
" Indents
"""""""""""""""""""""""""""""""""""""
" replace tabs with spaces
set expandtab
" 1 tab = 2 spaces
set tabstop=2 shiftwidth=2

" when deleting whitespace at the beginning of a line, delete 
" 1 tab worth of spaces (for us this is 2 spaces)
set smarttab

" when creating a new line, copy the indentation from the line above
set autoindent

set numberwidth=1

"""""""""""""""""""""""""""""""""""""
" Python
"""""""""""""""""""""""""""""""""""""
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4

"""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase
set smartcase

" highlight search results (after pressing Enter)
set hlsearch

" highlight all pattern matches WHILE typing the pattern
set incsearch


"""""""""""""""""""""""""""""""""""""
" Mix
"""""""""""""""""""""""""""""""""""""
" show the mathing brackets
set showmatch

" highlight current line
set cursorline


"""""""""""""""""""""""""""""""""""""
" Other
"""""""""""""""""""""""""""""""""""""
set mouse=a
set clipboard=unnamed
set clipboard=unnamedplus
syntax enable
set showcmd                       "Show line of commands
set ruler						  "Show line where the cursor is
set encoding=utf-8
set relativenumber                "Counting number to up and down
set laststatus=2                  "Show status of file
set cc=80                         "Line for good coding - size of line
