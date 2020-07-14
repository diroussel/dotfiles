syntax on
set laststatus=2

" Don't try to be vi compatible
set nocompatible


" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬

" Grey background for line numbers gutter
highlight LineNr ctermfg=grey ctermbg=236
