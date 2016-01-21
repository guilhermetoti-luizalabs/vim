"
" My default .vimrc file
" @author Guilherme Toti
"

" Default settings

" Configuration file for vim
set modelines=0        " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2        " more powerful backspacing
set shiftwidth=4

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set tabstop=4
set expandtab
set autoindent
set backspace=eol,start,indent

" show linenumber
set nu

" syntax highlight
syntax enable
colorscheme wellsokai
set background=dark
set cursorline
highlight CursorLine ctermbg=237

" remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" don't create backup
set nobackup
set nowritebackup
set noswapfile

" hide files in netrw
let g:netrw_list_hide= '.*\.swp$,.*\.pyc'

" search settings
set hlsearch
set incsearch
set ignorecase

" show colorcolumn for column 80 in python files
augroup python
    au!
    autocmd FileType python set colorcolumn=80
augroup END

let mapleader=" "

" Custom configs
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Maps
noremap <leader>k :Vexplore<cr>
noremap <F2> <C-W>=
noremap YY "+y<CR>

" Lets
let g:netrw_winsize = 20

