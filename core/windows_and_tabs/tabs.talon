tag: user.tabs
-
#tab (open | new): app.tab_open()
#tab (last | previous): app.tab_previous()
tab open: app.tab_open()
tab previous: app.tab_previous()
tab next: app.tab_next()
tab close: user.tab_close_wrapper()
#tab (reopen | restore): app.tab_reopen()
tab reopen: app.tab_reopen()
go tab <number>: user.tab_jump(number)
go tab final: user.tab_final()
#tab (duplicate | clone): user.tab_duplicate()
tab duplicate: user.tab_duplicate()
