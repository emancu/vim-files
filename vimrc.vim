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
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

"colorscheme jellybeans
colorscheme one
set background=dark

" Load common settings
source ~/.vim/abbreviations.vim
source ~/.vim/config/config.vim
