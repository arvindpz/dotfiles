" Vim need not be compatible with Vi
set nocompatible

" Set line numbers
set number

" Set relative line numbers
set relativenumber

" Enable search as you type, without having to press Enter
set incsearch
set ignorecase
" Enable highlight for search terms
set hlsearch

" Enable syntax highlighter
syntax on

" Set tab width to 2 spaces
set tabstop=2 shiftwidth=2 expandtab

" Set usual backspace behaviour
set bs=2

" Fuzzy file search
set runtimepath+=/usr/local/opt/fzf

filetype on             " enable filetype detection
filetype indent on      " load filetype-specific indent files
filetype plugin on      " load filetype specific plugin files
