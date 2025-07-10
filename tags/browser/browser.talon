tag: browser
-
tag(): user.address
tag(): user.find
tag(): user.navigation

#go page | page focus: browser.focus_page()
page focus: browser.focus_page()

chess focus:
    browser.focus_page()
    key('enter')
    key('ctrl-a')
    key('backspace')

#go home: browser.go_home()
#go private: browser.open_private_window()

bookmark it: browser.bookmark()
#bookmark tabs: browser.bookmark_tabs()
#(refresh | reload) it soft: browser.reload()
page reload soft: browser.reload()
#(refresh | reload) it hard: browser.reload_hard()
page reload hard: browser.reload_hard()

bookmark show: browser.bookmarks()
bookmark bar [show]: browser.bookmarks_bar()
downloads show: browser.show_downloads()
extensions show: browser.show_extensions()
history show: browser.show_history()
cache show: browser.show_clear_cache()
dev tools [show]: browser.toggle_dev_tools()

# Legacy [verb noun] commands to be removed at a later time
#show downloads: browser.show_downloads()
#show extensions: browser.show_extensions()
#show history: browser.show_history()
#show cache: browser.show_clear_cache()

insert new line: key('shift-enter')
