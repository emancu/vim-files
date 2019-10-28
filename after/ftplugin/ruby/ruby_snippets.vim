set et
set sw=2
set ts=2

" Ruby
" call IMAP('##', '#{<++>}', 'ruby')
call IMAP('def--', "def <++>\n<++>\nend", 'ruby')
call IMAP('do--', "do |<++>|\n<++>\nend", 'ruby')
call IMAP('{--', "{ |<++>| <++> }", 'ruby')
call IMAP('deb--', "require 'pry'; binding.pry", 'ruby')
call IMAP('log--', "puts '*' * 80", 'ruby')
call IMAP('""', "\"<++>\"", 'ruby')
call IMAP("''", "'<++>'", 'ruby')
call IMAP('()', "\(<++>\)", 'ruby')
call IMAP('[]', "\[<++>\]", 'ruby')
call IMAP('{}', "\{<++>\}", 'ruby')
call IMAP('=.', " => ", 'ruby')
call IMAP('lit--', "# frozen_string_literal: true", 'ruby')

" Tests
call IMAP('Test--', "class Test<++> < Test::Unit::TestCase\n<++>\nend", 'ruby')
call IMAP('context--', "context '<++>' do\n<++>\nend", 'ruby')
call IMAP('cx--', "context '<++>' do\n<++>\nend", 'ruby')
call IMAP('scenario--', "scenario \"<++>\" do\n<++>\nend", 'ruby')
call IMAP('setup--', "setup do\n<++>\nend", 'ruby')
call IMAP('desc--', "describe \"<++>\" do\n<++>\nend", 'ruby')
call IMAP('it--', "it '<++>' do\n<++>\nend", 'ruby')

" Stories with Webrat
call IMAP('sop--', "save_and_open_page", 'ruby')
