set expandtab
set tabstop=4
set shiftwidth=2
set autoindent
set smartindent
set mouse=a

set belloff=all
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'raimondi/delimitmate'
Plugin 'luochen1990/rainbow'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'villainy/murmur-lightline'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" vim-airline config // REPLACED WITH LIGHTLINE
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
"let g:airline_theme='murmur'

" lightline config
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'murmur',
    \ }
" If no murmur use wombat

" vim-rainbow config
let g:rainbow_active = 1

" Vim Colours
colorscheme desert
set background=dark " same here, tmux compatibility

" Better color support for macOS terminals
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

" Fix macOS terminal background issues
" set t_ut=  " Not needed
if has("mac") || system('uname') =~ "Darwin"
    highlight Normal ctermbg=NONE guibg=NONE
    highlight NonText ctermbg=NONE guibg=NONE
endif