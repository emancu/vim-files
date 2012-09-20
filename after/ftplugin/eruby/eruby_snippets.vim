set et
set sw=2
set ts=2

" Erb
call IMAP('br--', '<br/>', 'eruby')
call IMAP('h1--', '<h1><++></h1>', 'eruby')
call IMAP('h2--', '<h2><++></h2>', 'eruby')
call IMAP('h3--', '<h3><++></h3>', 'eruby')
call IMAP('div--', '<div><++></div>', 'eruby')
call IMAP('span--', '<span><++></span>', 'eruby')
call IMAP('p--', '<p><++></p>', 'eruby')
call IMAP('b--', '<b><++></b>', 'eruby')
call IMAP('tr--', '<tr><++></tr>', 'eruby')
call IMAP('td--', '<td><++></td>', 'eruby')
call IMAP('%%', '<% <++> %>', 'eruby')
call IMAP('%$', '<%= <++> %>', 'eruby')
call IMAP('<>', '<<++>>', 'eruby')
call IMAP('=.', " => ", 'eruby')
call IMAP('todo--', '<!-- TODO: <++> -->', 'eruby')
call IMAP('//', '<!-- <++> -->', 'eruby')
call IMAP('fix--', '<!-- FIXME: <++> -->', 'eruby')
call IMAP('/?', '<!-- <++>', 'eruby')
call IMAP('?/', ' --><++>', 'eruby')
