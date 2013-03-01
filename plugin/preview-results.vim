function! PrepareSplits(line_number)
  " Go to line and center it
  execute ":" . a:line_number
  execute "normal zz"

  execute "set nowrap"
  execute "set scrollopt=ver"
  execute "set scrollbind"
endfunction

" Use the preview window to show command results
function! PreviewResults(command)
  let s:line_number = getpos(".")[1]
  execute "write"
  execute "vsplit /tmp/preview.window"
  execute "normal ggdG"
  execute "0read! " . a:command
  execute "write"

  " Updates windows
  call PrepareSplits(s:line_number)
  execute "wincmd w"
  call PrepareSplits(s:line_number)
  execute "wincmd w"
endfunction

