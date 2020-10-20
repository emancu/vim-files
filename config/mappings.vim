" Show/Hide menu items. Perfect for GVim
" map <silent> <F1> :if &guioptions =~# 'm' <Bar> set guioptions-=m <bar> else <Bar> set guioptions+=m <Bar> endif<CR>
map <F1> :TagbarOpenAutoClose<CR>

" Source current file
map <F2> :tabnew<CR>:MRU <CR>
map <S-F2> :MRU <CR>

" Open Tree
map <F3> :Vex <CR>3i

" Execute tests
map <F4> <ESC>:TestNearest<CR>
map <S-F4> <ESC>:TestFile<CR>

" Create a gist with the selection
map <F5> <ESC>:'<,'>Gist -p<CR>
map <S-F5> <ESC>:Gist -p<CR>

" Execute files with Ruby 1.9
map <F6> <ESC>Odeb--<ESC>j:w<CR>
map <S-F6> <ESC>Olog--<ESC>j:w<CR>

" F7 is mapped to open snippets
" map <F7>

" Auto indent
"map <F8> ggVG=''
map <F8> :!bundle exec rubocop -a %<CR>:e!<CR>

" Select word and find next occurrence
map <F9> <ESC>*

" Toggle search highlight
map <F10> :set hlsearch!<CR>
imap <F10> <ESC>:set hlsearch!<CR>a
map <S-F10> :call HighlightOverlength() <CR>

" Handle trailing whitespaces and tabs.
map <F11> <ESC>:%s/\s*$//g<CR>:%s/\t/  /<CR>
map <S-F11> :IndentGuidesToggle<CR>

" Start and stop the webserver
map <Leader>start <ESC>:!thin start -R config.ru -d<CR>
map <Leader>stop  <ESC>:!thin stop<CR>

" Add magic comment for encoding
nmap <Leader>enc :set paste<CR>ggi# encoding: UTF-8<CR><CR><ESC>:set nopaste<CR>

" Open file under the cursor in new tab
"map gf :tabe! <cfile><CR>
"map gF :w! /tmp/spec.results<CR><C-W>gF<CR>

" Go to mark at the colum where the mark was set
map ' `

" Mimic command line editing
map <C-K> <ESC>d$
map <C-U> <ESC>d0
imap <C-A> <ESC>0i
imap <C-E> <ESC>$a

" Move between tabs
map <C-H> :tabp<CR>
map <C-L> :tabn<CR>
map <A-Left> :tabp <CR>
map <A-Right> :tabn <CR>


" Deactivate middle click
map <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>

" Same as J but staying a line below
map K <ESC>kJ

" After a repeat operation, go back to the first character of the previously changed or yanked text
nmap . .`[

" Movement mappings
nmap j gj
nmap k gk
nmap gm g$

" Break the undo chain on every Space
imap <Space> <Space><C-g>u

" Insert a blank line above the current line
imap <C-K> <ESC>O

" Move left and right in insert mode
imap <C-L> <ESC>la
imap <C-H> <ESC>ha

" Open file in new tab
nmap <C-O> :tab drop 
nmap <C-e> :tab drop <C-R>=expand("%:p:h") . "/"<CR>
" macm Edit.Find.Use\ Selection\ for\ Find key=<nop>
nmap <D-e> :e <C-R>=expand("%:p:h") . "/"<CR>

" Run git blame in the current file and display results in the preview window.
map <C-G> :call PreviewResults("git blame --abbrev=0 --date=short " . expand("%"))<CR>

map <C-n> :CtrlP<CR>

" Undo & Redo cross-branch for a better solution watch vimcasts episode 30
" or try plugin: http://sjl.bitbucket.org/gundo.vim/
map u g-
map <C-r> g+

" Tipically copy/paste usage
vmap <C-x> "+x
vmap <C-c> "+y
imap <C-v> <ESC>"+gP i

map <C-m> <C-w>\|<C-w>_
" restores with <C-w>= or pressing enter

command! W w

" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Keep selected text selected when fixing indentation
vnoremap < <gv
vnoremap > >gv
