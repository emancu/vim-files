" Open scratch files for Ruby (F1) and Mo (S-F1)
map <F1> :tabnew $HOME/Code/Samples/ruby.rb<CR>:tabm 0<CR>
map <S-F1> :tabnew $HOME/Code/Samples/mo.mo<CR>:tabm 0<CR>

" Source current file
map <F2> :source %<CR>

" Open .vimrc in the first tab
map <S-F2> :tabnew $HOME/.gvimrc<CR>:tabm 0<CR>

" Open tasks
map <F3> :tabnew $HOME/Documents/Notes/tasks.taskpaper<CR>:tabm 0<CR>

" Format selection with par
vmap <F8> :!par<CR>

" Toggle search highlight
map <F10> :set hlsearch!<CR>
imap <F10> <ESC>:set hlsearch!<CR>a

" Handle trailing whitespaces
map <F11> <ESC>:set list!<CR>
map <S-F11> <ESC>:%s/\s*$//g<CR>

" Open file under the cursor in new tab
map gf :tabe! <cfile><CR>
map gF :w! /tmp/spec.results<CR><C-W>gF<CR>

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

" Go to tabs by number
map <D-1> <ESC>:tabn1<CR>
map <D-2> <ESC>:tabn2<CR>
map <D-3> <ESC>:tabn3<CR>
map <D-4> <ESC>:tabn4<CR>
map <D-5> <ESC>:tabn5<CR>
map <D-6> <ESC>:tabn6<CR>
map <D-7> <ESC>:tabn7<CR>
map <D-8> <ESC>:tabn8<CR>
map <D-9> <ESC>:tabn9<CR>

" Deactivate middle click
map <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>

" Deactivate recording
map q <Nop>

" Deactivate keyword lookup
map K <Nop>


" After a repeat operation, go back to the first character of the previously changed or yanked text
nmap . .`[

" Movement mappings
nmap j gj
nmap k gk
nmap gm g$

" Close tabs and save the files
map <F4> <ESC>:w!<CR>:bw<CR>
map <S-F4> <ESC>:bw!<CR>

" Execute files with Ruby 1.9
map <F6> <ESC>:w!<CR>:!ruby1.9 %<CR>
map <S-F6> <ESC>:w!<CR>:!ruby1.9 -c %<CR>

" Break the undo chain on every Space
imap <Space> <Space><C-g>u

" Insert a blank line above the current line
imap <C-K> <ESC>O

" Move left and right in insert mode
imap <C-L> <ESC>la
imap <C-H> <ESC>ha

" Substitute last search in the current buffer
imap <C-B> <ESC>:%s//
nmap <C-B> :%s//

" Open file in new tab
nmap <C-O> :tabe 

" Comment/uncomment with #
nmap <F12> <ESC>:s/\v^(\s*)([^# ])/\1# \2/<CR>:set nohlsearch<CR>
nmap <S-F12> <ESC>:s/\v^(\s*)# ([^#])/\1\2/<CR>:set nohlsearch<CR>
vmap <F12> :s/\v^(\s*)([^# ])/\1# \2/<CR>:set nohlsearch<CR>
vmap <S-F12> :s/\v^(\s*)# ([^#])/\1\2/<CR>:set nohlsearch<CR>

" Command+Space as Escape
imap <C-Space> <ESC>

" Run git blame in the current file and display results in the preview window.
map <C-G> :call PreviewResults("git blame " . expand("%"))<CR>

" Run tests and display results in the preview window.
map <C-T> :call PreviewResults("testrb " . expand("%") . " -n " . expand("<cword>"))<CR>
