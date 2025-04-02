#(ship | uppercase) <user.letters> [(lowercase | sunk)]:
#    user.insert_formatted(letters, "ALL_CAPS")

#$ after this does not work, might need to restart talon
letter:

letter <user.letters>:
    user.insert_formatted(letters, "NOOP")

upper:

upper <user.letters>:
    user.insert_formatted(letters, "ALL_CAPS")

<user.symbol_key>: key(symbol_key)
<user.function_key>: key(function_key)
<user.special_key>: key(special_key)
#<user.keypad_key>: key(keypad_key)

#<user.modifiers> <user.unmodified_key>: key("{modifiers}-{unmodified_key}")
<user.modifiers> <user.symbol_key>: key("{modifiers}-{symbol_key}")
<user.modifiers> <user.function_key>: key("{modifiers}-{function_key}")
<user.modifiers> <user.special_key>: key("{modifiers}-{special_key}")
<user.modifiers> <user.arrow_key>: key("{modifiers}-{arrow_key}")
<user.modifiers> <user.number_key>: key("{modifiers}-{number_key}")

<user.modifiers> letter <user.letter>: key("{modifiers}-{letter}")
<user.modifiers> upper <user.letter>: key("{modifiers}-shift-{letter}")
shift <user.function_key>: key("shift-{function_key}")
<user.modifiers> shift <user.function_key>: key("{modifiers}-shift-{function_key}")

#<user.modifiers> shift <user.arrow_key>: key("{modifiers}-shift-{arrow_key}")

# for key combos consisting only of modifiers, eg. `press super`.
press <user.modifiers>: key(modifiers)
# for consistency with dictation mode and explicit arrow keys if you need them.
press <user.keys>: key(keys)
