" Print line number
set nu
syntax enable

" Always show last statusline
set  laststatus=2

" Set cursorlines to get track of the cursor
set cursorline
set cursorcolumn
:hi CursorLine cterm=NONE ctermbg=4 ctermfg=white guibg=darkred guifg=white
:hi CursorColumn   cterm=NONE ctermbg=4 ctermfg=white guibg=darkred guifg=white

" Set encoding
set encoding=utf-8
set fileencoding=utf-8

" Set the indentation
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
