" Set encodings to UTF8
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

" Basic settings
syntax on
filetype on
filetype indent on
filetype plugin on
set wrap

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
autocmd FileType make setlocal noexpandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab
set textwidth=0
set showtabline=2
set laststatus=2

set statusline=
set statusline+=%<              " truncate
set statusline+=\ %f%m%r%h%w    " relative path
set statusline+=%=              " seperate between right- and left-aligned
set statusline+=%([%l,%v]%)     " line and column
set statusline+=%(\ %Y\ %)      " file type


" Cursor line
set cursorline
" set cursorcolumn

" Highlights
hi TabLine cterm=bold ctermfg=Black ctermbg=DarkGray
hi TabLineFill cterm=bold ctermfg=Black ctermbg=DarkGray
hi TabLineSel cterm=NONE ctermfg=White ctermbg=DarkRed
hi StatusLine guifg=Black guibg=#E0D8AA ctermfg=Black ctermbg=LightYellow
hi StatusLineNC ctermfg=DarkGray ctermbg=Black
hi CursorLine cterm=NONE  ctermbg=23
hi MatchParen ctermbg=Black ctermfg=DarkYellow
hi LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Temp files
set nobackup
set nowritebackup
set noswapfile

" Show tabs and trailing spaces toggle with F11, remove with S-F11
set listchars=tab:⏤⇢,trail:⇢
set list
set complete=.,w,b,u

" Change file expansion to mimic shell behavior
set wildmenu
set wildmode=list:longest

set wildignore=*.png,*.jpg,*.gif,coverage/**,tmp/**,log/**,./voxeo_utils/**,./bin/**,docs/**,*.o,vendor/**

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

set noballooneval " Disable tooltip
set balloondelay=20000

" Other files.
source ~/.vim/config/gist.vim
source ~/.vim/config/mappings.vim
source ~/.vim/config/ctrlp.vim
source ~/.vim/config/to-github.vim
source ~/.vim/config/git-gutter.vim
source ~/.vim/config/tagbar.vim
