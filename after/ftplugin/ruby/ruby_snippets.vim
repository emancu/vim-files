set et
set sw=2
set ts=2

" Ruby
" call IMAP('##', '#{<++>}', 'ruby')
call IMAP('def--', "def <++>\n<++>\nend", 'ruby')
call IMAP('do--', "do |<++>|\n<++>\nend", 'ruby')
call IMAP('{--', "{ |<++>| <++> }", 'ruby')
call IMAP('deb--', "require 'ruby-debug'; debugger", 'ruby')
call IMAP('""', "\"<++>\"", 'ruby')
call IMAP("''", "'<++>'", 'ruby')
call IMAP('()', "\(<++>\)", 'ruby')
call IMAP('[]', "\[<++>\]", 'ruby')
call IMAP('{}', "\{<++>\}", 'ruby')
call IMAP('=.', " => ", 'ruby')
call IMAP('<+', " <++> ", 'ruby')

" Tests
call IMAP('Test--', "class Test<++> < Test::Unit::TestCase\n<++>\nend", 'ruby')
call IMAP('context--', "context \"<++>\" do\n<++>\nend", 'ruby')
call IMAP('should--', "should \"<++>\" do\n<++>\nend", 'ruby')
call IMAP('story--', "story \"<++>\" do\n<++>\nend", 'ruby')
call IMAP('scenario--', "scenario \"<++>\" do\n<++>\nend", 'ruby')
call IMAP('setup--', "setup do\n<++>\nend", 'ruby')
call IMAP('teardown--', "teardown do\n<++>\nend", 'ruby')
call IMAP('desc--', "describe \"<++>\" do\n<++>\nend", 'ruby')
call IMAP('it--', "it \"should <++>\" do\n<++>\nend", 'ruby')

" Stories with Webrat
call IMAP('sop--', "save_and_open_page", 'ruby')
