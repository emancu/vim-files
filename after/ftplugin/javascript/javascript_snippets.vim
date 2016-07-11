set et
set sw=2
set ts=2

call IMAP('""', "\"<++>\"", 'javascript')
call IMAP("''", "'<++>'", 'javascript')
call IMAP('()', "\(<++>\)", 'javascript')
call IMAP('[]', "\[<++>\]", 'javascript')
call IMAP('{}', "\{<++>\}", 'javascript')
call IMAP('$$', "\$\(<++>\)", 'javascript')
call IMAP("log-", "console.log(<++>);", 'javascript')
call IMAP("it--", 'it("<++>", function() { <++>})', 'javascript')
call IMAP("f-", "function() {<++>}", 'javascript')
