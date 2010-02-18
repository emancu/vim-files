" Execute Ruby tests or a particular scenarios.
" If the cursos is on a line that contains an scenario declaration,
" only that scenario is run.

function! ExecuteTest()
  let s:file = expand("%")
  let s:line = getline(".")

  if match(s:line, '^\s*scenario ') != -1
    let s:name = tr(substitute(s:line, '\s*scenario "\(.*\)" do\s*', "\\1", ""), ' ', '_')
    execute "!env ruby " . s:file . " -n '/" . s:name . "/'"
  else
    execute "!env ruby " . s:file
  end
endfunction
