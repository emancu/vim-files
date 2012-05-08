" Configure GUI
set guitablabel=%N.\ %t%(\ %M%)
set showtabline=2
set guioptions-=T
set guioptions-=F
set guioptions-=m
set guioptions+=a
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)
set winminheight=0

" Color settings
"color railscasts
color jellybeans

syn sync minlines=50

" Load common settings
source ~/.vim/config/config.vim
