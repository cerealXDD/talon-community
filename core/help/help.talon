#(help letters | alphabet): user.help_list("user.letter")
#alpha zeta: user.help_list("user.letter")
help letter: user.help_list("user.letter")
help symbol: user.help_list("user.symbol_key")
help number: user.help_list("user.number_key")
help punctuation: user.help_list("user.punctuation")
help modifier: user.help_list("user.modifier_key")
help special key: user.help_list("user.special_key")
help function key: user.help_list("user.function_key")
help arrow: user.help_list("user.arrow_key")
help context$: user.help_context()
help active$: user.help_context_enabled()
help search <user.text>$: user.help_search(text)
help context {user.help_contexts}$: user.help_selected_context(help_contexts)
help help: user.help_search("help")
help scope$: user.help_scope_toggle()
help snip: user.help_list("user.snippet")

help formatters:
    user.help_formatters(user.get_formatters_words(), false)
#help re formatters:
help reformatters:
    user.help_formatters(user.get_reformatters_words(), true)
