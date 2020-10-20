" Configure GUI
set guitablabel=%N.\ %t%(\ %M%)
set showtabline=2
set guioptions-=T " Removes top toolbar
set guioptions-=F " Remove footer
set guioptions-=m " Remove menu bar
set guioptions+=a " Add autoselect
set guioptions-=r " Removes right hand scroll bar
set guioptions-=L " Removes left hand scroll bar for vertical Splits

set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)
set winminheight=0

" Font
set guifont=Menlo:h11

" Color settings
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

syn sync minlines=200

" Disable MacVim mapping for CMD+E
macm Edit.Find.Use\ Selection\ for\ Find	key=<nop>

" Load common settings
source ~/.vim/abbreviations.vim
source ~/.vim/config/config.vim
