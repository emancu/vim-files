scriptencoding utf-8
set encoding=utf-8

" Backspace behavior
set backspace=indent,eol,start

set guioptions-=r " Removes right hand scroll bar

silent! set re=1
" Try something to colorize vim and save timeo
" http://www.eecs.harvard.edu/~cduan/technical/vi/vi-4.shtml
"syn sync fromstart
syn sync minlines=70

" Color settings
set t_Co=256
colorscheme jellybeans

" Load common settings
source ~/.vim/abbreviations.vim
source ~/.vim/config/config.vim
