" Execute Ruby tests or a particular scenarios.
" If the cursos is on a line that contains an scenario declaration,
" only that scenario is run.

function! ExecuteTest()
  let s:file = expand("%:~:.")
  let s:line = getline(".")
  let s:exec_bin = "!env bundle exec rspec "
  let s:exec_options = "--no-color "

  if match(s:line, '^\s*scenario ') != -1
    let s:name = tr(substitute(s:line, '\s*scenario "\(.*\)" do\s*', "\\1", ""), ' ', '_')
    execute s:exec_bin . s:exec_options . s:file . " -n '/" . s:name . "/'"
  else
    if match(s:line, '^\s*it ') != -1
      let s:name = substitute(s:line, '\s*it "\(.*\)" do\s*', "\\1", "")
      execute s:exec_bin . s:exec_options . s:file . " -e \"" . s:name . "\""
    else
      echo "No matching test, running entire file."
      execute s:exec_bin . s:exec_options . s:file
    end
  end
endfunction
