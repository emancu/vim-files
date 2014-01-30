" Backspace behavior
set backspace=indent,eol,start

set re=1
" Try something to colorize vim and save timeo
" http://www.eecs.harvard.edu/~cduan/technical/vi/vi-4.shtml
"syn sync fromstart
syn sync minlines=20

" Color settings
set t_Co=256
colorscheme jellybeans

" Load common settings
source ~/.vim/abbreviations.vim
source ~/.vim/config/config.vim
