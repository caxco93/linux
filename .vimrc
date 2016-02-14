filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set number
set relativenumber

set foldlevelstart=10

set completeopt=menu
let g:pymode_options_colorcolumn = 0

set clipboard=unnamedplus

autocmd! bufwritepost .vimrc source %

autocmd BufEnter * call system("tmux rename-window 'vim " . expand("%:p:h:t") . "/" . expand("%:t") . "'")
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

""" au BufRead,BufNewFile *.html set filetype=htmldjango

let mapleader=","
set pastetoggle=<leader>p
color evening
