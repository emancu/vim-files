" Toggle comments with # or <!-- -->. Depending on file extension.
function! CommentAndUncomment()
  let s:line = getline(".")
  let file = expand("%")

  if stridx(file, ".rb") != -1
    call CommentForRuby()
  elseif stridx(file, ".yml") != -1
    call CommentForRuby()
  elseif stridx(file, ".haml") != -1
    call CommentForHaml()
  elseif stridx(file, ".erb") != -1
    call CommentForHTML()
  elseif stridx(file, ".html") != -1
    call CommentForHTML()
  elseif stridx(file, ".cr") != -1
    call CommentForRuby()
  elseif stridx(file, ".c") != -1
    call CommentForC_Java()
  elseif stridx(file, ".h") != -1
    call CommentForC_Java()
  elseif stridx(file, ".cpp") != -1
    call CommentForC_Java()
  elseif stridx(file, ".coffee") != -1
    call CommentForRuby()
  elseif stridx(file, ".js") != -1
    call CommentForC_Java()
  elseif stridx(file, ".java") != -1
    call CommentForC_Java()
  elseif stridx(file, ".vim") != -1
    call CommentForVim()
  elseif stridx(file, ".citrus") != -1
    call CommentForRuby()
  elseif stridx(file, ".sh") != -1
    call CommentForRuby()
  elseif stridx(file, ".hs") != -1
    call CommentForHaskell()
  elseif stridx(file, ".ex") != -1
    call CommentForRuby()
  elseif stridx(file, ".jl") != -1
    call CommentForRuby()
  elseif stridx(file, ".elm") != -1
    call CommentForElm()
  endif
endfunction

function! CommentForHTML()
  let s:line = getline(".")
  if match(s:line, '^\s*<!-- ') != -1
    call setline(".", substitute(s:line, '^\s*<!-- \(.*\) -->', "\\1", ""))
  else
    call setline(".", substitute(s:line, "\\(\\s*\\)\\(.*\\)", "<!--\\1 \\2 -->", ""))
  end
endfunction

function! CommentForRuby()
  let s:line = getline(".")
  if match(s:line, '^\s*# ') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)# ", "\\1", ""))
  elseif match(s:line, '^\s*[^#]') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)", "\\1# ", ""))
  end
endfunction

function! CommentForHaskell()
  let s:line = getline(".")
  if match(s:line, '^\s*-- ') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)-- ", "\\1", ""))
  elseif match(s:line, '^\s*[^--]') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)", "\\1-- ", ""))
  end
endfunction

function! CommentForHaml()
  let s:line = getline(".")
  if match(s:line, '^\s*- # ') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)- # ", "\\1", ""))
  elseif match(s:line, '^\s*[^#]') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)", "\\1- # ", ""))
  end
endfunction

function! CommentForC_Java()
  let s:line = getline(".")
  if match(s:line, '^\s*\/\/ ') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)\/\/ ", "\\1", ""))
  elseif match(s:line, '^\s*[^\/\/]') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)", "\\1\/\/ ", ""))
  end
endfunction

function! CommentForVim()
  let s:line = getline(".")
  if match(s:line, '^\s*" ') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)\" ", "\\1", ""))
  elseif match(s:line, '^\s*[^"]') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)", "\\1\" ", ""))
  end
endfunction

function! CommentForElm()
  let s:line = getline(".")
  if match(s:line, '^\s*-- ') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)-- ", "\\1", ""))
  elseif match(s:line, '^\s*[^--]') != -1
    call setline(".", substitute(s:line, "\\(\\s*\\)", "\\1-- ", ""))
  end
endfunction

map # :call CommentAndUncomment()<CR>
