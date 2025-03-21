# Compound of action(select, clear, copy, cut, paste, etc.) and modifier(word, line, etc.) commands for editing text.
# eg: "select line", "clear all"
<user.edit_action> <user.edit_modifier>: user.edit_command(edit_action, edit_modifier)

# Zoom
edit zoom in: edit.zoom_in()
edit zoom out: edit.zoom_out()
edit zoom reset: edit.zoom_reset()

# Searching
edit find it: edit.find()
edit next one: edit.find_next()

# Navigation

# The reason for these spoken forms is that "page up" and "page down" are globally defined as keys.
#scroll up: edit.page_up()
#scroll down: edit.page_down()

# go left, go left left down, go 5 left 2 down
# go word left, go 2 words right
go <user.navigation_step>+: user.perform_navigation_steps(navigation_step_list)

go line start: edit.line_start()
go line end: edit.line_end()

go way left:
    edit.line_start()
    edit.line_start()
go way right: edit.line_end()
go way up: edit.file_start()
go way down: edit.file_end()

go top: edit.file_start()
go bottom: edit.file_end()

go page up: edit.page_up()
go page down: edit.page_down()

# Indentation
#indent [more]: edit.indent_more()
#(indent less | out dent): edit.indent_less()
out dent: edit.indent_less()

# Copy
copy that: edit.copy()

# Cut
#cut that: edit.cut()

# Paste
(pace | paste) that: edit.paste()
(pace | paste) enter:
    edit.paste()
    key(enter)
paste match: edit.paste_match_style()

# Duplication
#clone that: edit.selection_clone()
edit clone line: edit.line_clone()

# Insert new line
new line above: edit.line_insert_up()
new line below: edit.line_insert_down()

# Insert padding with optional symbols
padding spacebar: user.insert_between(" ", " ")
#(pad | padding) <user.symbol_key>+:
padding <user.symbol_key>+:
    insert(" ")
    user.insert_many(symbol_key_list)
    insert(" ")

# Undo/redo
edit undo: edit.undo()
edit redo: edit.redo()

# Save
file save: edit.save()
file save all: edit.save_all()

go line middle: user.line_middle()
