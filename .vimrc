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
