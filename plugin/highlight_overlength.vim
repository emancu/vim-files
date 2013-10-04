function! HighlightOverlength()
  if exists('w:long_line_match')
    call matchdelete(w:long_line_match)
    unlet w:long_line_match
  elseif &textwidth > 0
    let w:long_line_match = matchadd('ErrorMsg', '\%>'.&tw.'v.\+', -1)
  else
    let w:long_line_match = matchadd('ErrorMsg', '\%>81v.\+', -1)
  endif
endfunction
