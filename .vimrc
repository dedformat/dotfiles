set foldmethod=syntax
if has('gui_running')
	set background=light
else
	set background=dark
endif

let g:hybrid_use_Xresources = 1
:colorscheme hornet
"colorscheme Tomorrow-Night
"colorscheme minhxr
set rtp+=/usr/lib/python3.4/site-packages/powerline/bindings/vim/
set laststatus=2

" set nocompatible
" set t_Co=256

syntax enable
filetype indent plugin on
set number
:highlight LineNr ctermfg=red

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\

set backspace=indent,eol,start
