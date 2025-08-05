#provide both anchored and unachored commands via 'over'
#phrase <user.text>$:
#    user.add_phrase_to_history(text)
#    insert(text)
#phrase <user.text> {user.phrase_ender}:
#    user.add_phrase_to_history(text)
#    insert("{text}{phrase_ender}")
{user.prose_formatter} <user.prose>$: user.insert_formatted(prose, prose_formatter)
{user.prose_formatter} <user.prose> {user.phrase_ender}:
    user.insert_formatted(prose, prose_formatter)
    insert(phrase_ender)
format code <user.format_code>+$: user.insert_many(format_code_list)
format code <user.format_code>+ {user.phrase_ender}:
    user.insert_many(format_code_list)
    insert(phrase_ender)
reformat <user.formatters> that: user.formatters_reformat_selection(user.formatters)
format word {user.word_formatter} <user.word>: user.insert_formatted(word, word_formatter)
#sentry <user.word>: user.insert_formatted(word, "NOOP")
tensor <user.word>: user.insert_formatted(word, "NOOP")
#unit <user.word>: user.insert_formatted(word, "NOOP")
reformat <user.formatters> paste: user.insert_formatted(clip.text(), formatters)
#recent phrase list: user.toggle_phrase_history()
#recent phrase close: user.phrase_history_hide()
#recent phrase repeat <number_small> times:
#    recent_phrase = user.get_recent_phrase(number_small)
#    user.add_phrase_to_history(recent_phrase)
#    insert(recent_phrase)
#recent phrase copy <number_small> times: clip.set_text(user.get_recent_phrase(number_small))
#select last phrase: user.select_last_phrase()
#before last phrase: user.before_last_phrase()
#nope that | scratch that: user.clear_last_phrase()
#(undo that | undo last phrase): user.clear_last_phrase()
#undo that: user.clear_last_phrase()
edit undo: user.clear_last_phrase()
nope that was <user.formatters>: user.formatters_reformat_last(formatters)
#(abbreviate | abreviate) {user.abbreviation}: "{abbreviation}"
#<user.formatters> (abbreviate | abreviate) {user.abbreviation}:
#    user.insert_formatted(abbreviation, formatters)
