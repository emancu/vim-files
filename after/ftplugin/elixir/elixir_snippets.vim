set et
set sw=2
set ts=2

" elixir
call IMAP('def--', "def <++>\n<++>\nend", 'elixir')
call IMAP('deb--', "require IEx; IEx.pry", 'elixir')
call IMAP('io--', "IO.inspect <++>", 'elixir')
call IMAP('""', "\"<++>\"", 'elixir')
call IMAP("''", "'<++>'", 'elixir')
call IMAP('()', "\(<++>\)", 'elixir')
call IMAP('[]', "\[<++>\]", 'elixir')
call IMAP('{}', "\{<++>\}", 'elixir')
call IMAP('=.', " => ", 'elixir')
