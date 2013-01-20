"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoread
set hid
set encoding=utf8
set ffs=unix,dos,mac
set wildmenu

set nocompatible	" We're running Vim, no Vi!
filetype on		" Enable filetype detection
filetype indent on	" Enable filetype-specific indentation
filetype plugin on	" Enable filetype-specific plugins

syntax on
colorscheme koehler

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Be smart when using tabs ;)
set smarttab

" 1 tab == 8 spaces
set shiftwidth=8
set tabstop=8

" Linebreak on 500 characters
set lbr
set tw=80

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ L%l\ C%c\ \ %P

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction


""""""""""""""""""""""""""""""
" Tool and menu bar
""""""""""""""""""""""""""""""
set guioptions-=T

""""""""""""""""""""""""""""""
" Haskell mode
""""""""""""""""""""""""""""""
au Bufenter *.hs compiler ghc
