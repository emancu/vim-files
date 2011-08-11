" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *Cakefile set filetype=coffee

"folding is disabled by default but can be quickly toggled per-file by hitting: zi
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
