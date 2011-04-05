if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect

  " Bash aliases and functions
  au! BufNewFile,BufRead *.bash* setf sh

  " Makefile
  au! BufNewFile,BufRead Makefile setf makefile

  " C language
  au! BufNewFile,BufRead *.c setf c

  " C++ language
  au! BufNewFile,BufRead *.h,*.cpp setf cpp

  " Haml xHTML Abstraction Markup Language
  au! BufNewFile,BufRead *.haml setf haml

  " HTML with Ruby - eRuby
  au! BufNewFile,BufRead *.erb,*.rhtml setf eruby

  " Markdown files
  au! BufNewFile,BufRead *.markdown,*.md setf markdown

  " Rack
  au! BufNewFile,BufRead *.ru setf ruby

  " Ruby
  au! BufNewFile,BufRead *.rb,*.rbw,8.gem setf ruby

  " Sass files
  au! BufNewFile,BufRead *.sass setf sass

  " Thor files
  au! BufNewFile,BufRead *.thor,Thorfile,Rakefile setf ruby

  " AsciiDoc
  au! FileType markdown,asciidoc setlocal spell
  au! BufNewFile,BufRead *.txt setf asciidoc

  " JSON
  au! BufNewFile,BufRead *.json setf javascript

augroup END
