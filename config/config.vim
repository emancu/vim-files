" Basic settings
syntax on
filetype on
filetype indent on
filetype plugin on

" Change default mapleader to a comma
let mapleader = ","
let maplocalleader = ","

" Folds
set fillchars="vert:YXXY,fold:-"

" Set spellcheck to English
set spelllang=en_us

" Tabs management
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set textwidth=0
set showtabline=2
set laststatus=2

" Cursor line
set cursorline

" Highlights
hi TabLine cterm=bold ctermfg=Black ctermbg=DarkGray
hi TabLineFill cterm=bold ctermfg=Black ctermbg=DarkGray
hi TabLineSel cterm=NONE ctermfg=White ctermbg=DarkRed
hi StatusLine ctermfg=Gray ctermbg=Black
hi StatusLineNC ctermfg=DarkGray ctermbg=Black
hi CursorLine cterm=NONE  ctermbg=DarkBlue
hi MatchParen ctermbg=Black ctermfg=DarkYellow
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Temp files
set nobackup
set nowritebackup
set noswapfile

" Set encodings to UTF8
set encoding=utf-8
set fileencoding=utf-8

" Show tabs and trailing spaces toggle with F11, remove with S-F11
set listchars=tab:⏤⇢,trail:⇢
set list
set complete=.,w,b,u

" Change file expansion to mimic shell behavior
set wildmenu
set wildmode=list:longest

" Fool Vim in case I'm running Fish shell
if $SHELL =~ 'bin/fish'
  set shell=/bin/sh
endif

" Fuzzyfinder configuration
let g:fuzzy_ignore = "*.png;*.jpg;*.gif;vendor/**;coverage/**;tmp/**"
let g:fuzzy_matching_limit = 20


" Case insensitive, incremental search, manual folds, etc.
set nocompatible
set autoindent
set smartindent
set iminsert=0
set gdefault
set ignorecase
set smartcase
set foldmethod=manual
set number
set incsearch
set hlsearch

" Other files.
source ~/.vim/config/gist.vim
source ~/.vim/config/mappings.vim
source ~/.vim/config/commenter.vim
source ~/.vim/config/execute-file.vim
source ~/.vim/config/execute-test.vim
source ~/.vim/config/tab-autocomplete.vim
source ~/.vim/config/imap-snippets.vim
source ~/.vim/config/preview-results.vim
