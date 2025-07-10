homophones <user.homophones_canonical>: user.homophones_show(homophones_canonical)
homophones that: user.homophones_show_auto()
homophones force <user.homophones_canonical>:
    user.homophones_force_show(homophones_canonical)
homophones force: user.homophones_force_show_selection()
homophones hide: user.homophones_hide()
homophones word:
    edit.select_word()
    user.homophones_show_selection()
homophones [<user.ordinals>] word left:
    n = ordinals or 1
    user.words_left(n - 1)
    edit.extend_word_left()
    user.homophones_show_selection()
homophones [<user.ordinals>] word right:
    n = ordinals or 1
    user.words_right(n - 1)
    edit.extend_word_right()
    user.homophones_show_selection()
