from talon import Context, Module, actions, app



mod = Module()
mod.list("letter", desc="The spoken phonetic alphabet")
mod.list("symbol_key", desc="All symbols from the keyboard")
mod.list("arrow_key", desc="All arrow keys")
mod.list("number_key", desc="All number keys")
mod.list("modifier_key", desc="All modifier keys")
mod.list("function_key", desc="All function keys")
mod.list("special_key", desc="All special keys")
mod.list("keypad_key", desc="All keypad keys")
mod.list("punctuation", desc="words for inserting punctuation into text")


@mod.capture(rule="{self.modifier_key}+")
def modifiers(m) -> str:
    "One or more modifier keys"
    return "-".join(m.modifier_key_list)


@mod.capture(rule="{self.arrow_key}")
def arrow_key(m) -> str:
    "One directional arrow key"
    return m.arrow_key


@mod.capture(rule="<self.arrow_key>+")
def arrow_keys(m) -> str:
    "One or more arrow keys separated by a space"
    return str(m)


@mod.capture(rule="{self.number_key}")
def number_key(m) -> str:
    "One number key"
    return m.number_key


@mod.capture(rule="{self.keypad_key}")
def keypad_key(m) -> str:
    "One keypad key"
    return m.keypad_key


@mod.capture(rule="{self.letter}")
def letter(m) -> str:
    "One letter key"
    return m.letter


@mod.capture(rule="{self.special_key}")
def special_key(m) -> str:
    "One special key"
    return m.special_key


@mod.capture(rule="{self.symbol_key}")
def symbol_key(m) -> str:
    "One symbol key"
    return m.symbol_key


@mod.capture(rule="{self.function_key}")
def function_key(m) -> str:
    "One function key"
    return m.function_key


@mod.capture(rule="( <self.letter> | <self.number_key> | <self.symbol_key> )")
def any_alphanumeric_key(m) -> str:
    "any alphanumeric key"
    return str(m)


@mod.capture(
    rule="( <self.letter> | <self.number_key> | <self.symbol_key> "
    "| <self.arrow_key> | <self.function_key> | <self.special_key> | <self.keypad_key>)"
)
def unmodified_key(m) -> str:
    "A single key with no modifiers"
    return str(m)


@mod.capture(rule="{self.modifier_key}* <self.unmodified_key>")
def key(m) -> str:
    "A single key with optional modifiers"
    try:
        mods = m.modifier_key_list
    except AttributeError:
        mods = []
    return "-".join(mods + [m.unmodified_key])


@mod.capture(rule="<self.key>+")
def keys(m) -> str:
    "A sequence of one or more keys with optional modifiers"
    return " ".join(m.key_list)

@mod.capture(rule="{self.letter}+")
def letters(m) -> str:
    "Multiple letter keys"
    return "".join(m.letter_list)


@mod.capture(rule="{self.letter}")
def chess_letter(m) -> str:
    "One letter key"
    if(m.letter in 'abcdefgh'):
        return m.letter

@mod.capture(rule="{self.number_key}")
def chess_number_key(m) -> str:
    "One letter key"
    if(m.number_key in '12345678'):
        return m.number_key

@mod.capture(rule="<self.chess_letter> <self.chess_number_key>")
def chess_keys(m) -> str:
    "A sequence of one or more keys with optional modifiers"
    return str(m.chess_letter + ' ' + m.chess_number_key)



ctx = Context()

# `punctuation_words` is for words you want available BOTH in dictation and as key names in command mode.
# `symbol_key_words` is for key names that should be available in command mode, but NOT during dictation.
punctuation_words = {
    # TODO: I'm not sure why we need these, I think it has something to do with
    # Dragon. Possibly it has been fixed by later improvements to talon? -rntz
    #"`": "`",
    #",": ",",  # <== these things
    #"back tick": "`",
    #"comma": ",",
    # Workaround for issue with conformer b-series; see #946
    "coma": ",",
    #"comatose": ",",
    #"fever": ",",
    #"weakness": ",",
    #"chroma": ",",
    #"peridot": ".",
    #"doctor": ".",
    "dota": ".",
    #"full stop": ".",
    #"forward": "/",
    #"afford": "/",
    #"seashell": "/",
    #"sasha": "/",
    #"slash": "/",
    #"ash": "/",
    #"cut": "/",
    "lash": "/",
    #"slash": "/",
    #"exclamation mark": "!",
    #"exclamation point": "!",
    #"asterisk": "*",
    #"hash sign": "#",
    #"number sign": "#",
    #"percent sign": "%",
    #"at sign": "@",
    #"and sign": "&",
    #"ampersand": "&",
    # Currencies
    #"dollar sign": "$",
    #"pound sign": "£",
    #"hyphen": "-",
    #"L paren": "(",
    #"left paren": "(",
    #"R paren": ")",
    #"right paren": ")",
}
symbol_key_words = {
    #too many problems with this, will activate just based on slight movement of my head
    #"dot": ".",
    #"point": ".",
    #"winky": ";",
    #"broken": ";",
    #"defective": ";",
    #"defect": ";",
    #"blemish": ";",
    #"lowlights": ";",
    #"semi": ";",
    "ian": ";",
    #"headlights": ":",
    #"colon": ":",
    "bull": ":",
    #"quote": "'",
    "question": "?",
    #"apostrophe": "'",
    "postal": "'",
    #"L square": "[",
    #"left square": "[",
    "left bracket": "[",
    #"left square bracket": "[",
    #"brack": "[",
    #"bracket": "[",
    #"left bracket": "[",
    #"square": "[",
    #"R square": "]",
    #"right square": "]",
    "right bracket": "]",
    #"right square bracket": "]",
    #"r brack": "]",
    #"r bracket": "]",
    #"right bracket": "]",
    "left paren": "(",
    "right paren": ")",
    #"slash": "/",
    #"slash": "/",
    #"for slash": "/",
    #"base": "\\",
    #"bossy": "\\",
    "boss": "\\",
    #"back slash": "\\",
    #"backslash": "\\",
    #"spine": "\\",
    #"ping": "\\",
    #"pin": "\\",
    #"leader": "\\",
    #"ruler": "\\",
    #"negative": "-",
    "minus": "-",
    #"dash": "-",
    "equals": "=",
    #"rectangle": "+",
    #"quadrangle": "+",
    #"parabola": "+",
    #"bullseye": "+",
    "surplus": "+",
    #"deposit": "+",
    #"positive": "+",
    "gravel": "`",
    #"granite": "`",
    #"triad": "`",
    #"triangle": "`",
    #"polygon": "`",
    #"tilde": "~",
    #"squiggly": "~",
    #"squid": "~",
    "tilda": "~",
    "bangkok": "!",
    #"bang": "!",
    #"down score": "_",
    "underscore": "_",
    #"paren": "(",
    #"brace": "{",
    "left curly": "{",
    #"left curly bracket": "{",
    #"curly bracket": "{",
    #"left curly bracket": "{",

    #"r brace": "}",
    "right curly": "}",
    #"right curly bracket": "}",
    #"r curly bracket": "}",
    #"right curly bracket": "}",
    #"angle": "<",
    "left angle": "<",
    #"left angle bracket": "<",
    #"less than": "<",
    #"rangle": ">",
    #"R angle": ">",
    "right angle": ">",
    #"right angle bracket": ">",
    #"greater than": ">",
    #"galaxy": "*",
    "gala": "*",
    #"star": "*",
    #"luma": "*",
    #"stellar": "*",
    #"hashtag": "#",
    "dial": "#",
    #"hash": "#",
    "percent": "%",
    #"percentage": "%",
    #"caret": "^",
    #"dagger": "^",
    #"puncture": "^",
    #"carrot": "^",
    #"orange": "^",
    #"ginger": "^",
    #"radish": "^",
    "turnip": "^",
    #"handle": "@",
    #"snail": "@",
    #"seashell": "@",
    #"crustacean": "@",
    "email": "@",
    #"dispatch": "@",
    #"loopy": "&",
    #"loop de loop": "&",
    #"leviathan": "&",
    #"loop": "&",
    #"circle": "&",
    "torso": "&",
    #"little uzi": "|",
    "uzi": "|",
    #"uzbekistan": "|",
    #"lil uzi": "|",
    #"dub quote": '"',
    #"double quote": '"',
    #"bunny": '"',
    #"lagomorph": '"',
    "rabbit": '"',
    # Currencies
    "dollar": "$",
    #"pound": "£",
}

# make punctuation words also included in {user.symbol_keys}
symbol_key_words.update(punctuation_words)
ctx.lists["self.punctuation"] = punctuation_words
ctx.lists["self.symbol_key"] = symbol_key_words
