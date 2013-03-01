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

" Set spellcheck to English. z= to suggestions
"set spell
set spelllang=en_us
set spellsuggest=5

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
" set cursorcolumn

" Highlights
hi TabLine cterm=bold ctermfg=Black ctermbg=DarkGray
hi TabLineFill cterm=bold ctermfg=Black ctermbg=DarkGray
hi TabLineSel cterm=NONE ctermfg=White ctermbg=DarkRed
hi StatusLine ctermfg=Gray ctermbg=Black
hi StatusLineNC ctermfg=DarkGray ctermbg=Black
hi CursorLine cterm=NONE  ctermbg=23
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

" Command-T configuration
let g:CommandTMaxDepth=10
let g:CommandTMaxHeight=30
let g:CommandTMatchWindowAtTop = 1
let g:CommandTAcceptSelectionSplitMap = '<C-s>'
let g:CommandTAcceptSelectionMap = '<C-CR>'
let g:CommandTAcceptSelectionTabMap = '<CR>'


set wildignore=*.png,*.jpg,*.gif,coverage/**,tmp/**,./log/**,./voxeo_utils/**,./bin/**,docs/**,*.o

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
