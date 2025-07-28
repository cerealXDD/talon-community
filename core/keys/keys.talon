#(ship | uppercase) <user.letters> [(lowercase | sunk)]:
#    user.insert_formatted(letters, "ALL_CAPS")

#$ after this does not work, might need to restart talon
#letter:

#(letter | litter | ladder) <user.letters>:
#letter <user.letters>:
#let <user.letters>:
#lead <user.letters>:
led <user.letters>:
    user.insert_formatted(letters, "NOOP")

#upper:

#upper <user.letters>:
capital <user.letters>:
    user.insert_formatted(letters, "ALL_CAPS")

sim <user.symbol_key>: key(symbol_key)
#sim <user.symbol_keys>: key(symbol_keys)
<user.function_key>: key(function_key)
<user.special_key>: key(special_key)
#<user.keypad_key>: key(keypad_key)

#<user.modifiers> <user.unmodified_key>: key("{modifiers}-{unmodified_key}")
<user.modifiers> sim <user.symbol_key>: key("{modifiers}-{symbol_key}")
<user.modifiers> <user.function_key>: key("{modifiers}-{function_key}")
<user.modifiers> <user.special_key>: key("{modifiers}-{special_key}")
<user.modifiers> motion <user.arrow_key>: key("{modifiers}-{arrow_key}")
#<user.modifiers> <user.arrow_key>: key("{modifiers}-{arrow_key}")
<user.modifiers> number <user.number_key>: key("{modifiers}-{number_key}")

<user.modifiers> led <user.letter>: key("{modifiers}-{letter}")
<user.modifiers> cap <user.letter>: key("{modifiers}-shift-{letter}")
shift <user.function_key>: key("shift-{function_key}")
<user.modifiers> shift <user.function_key>: key("{modifiers}-shift-{function_key}")
shift <user.special_key>: key("shift-{special_key}")
<user.modifiers> shift <user.special_key>: key("{modifiers}-shift-{special_key}")

#<user.modifiers> shift <user.arrow_key>: key("{modifiers}-shift-{arrow_key}")

# for key combos consisting only of modifiers, eg. `press super`.
press mod <user.modifiers>: key(modifiers)
# for consistency with dictation mode and explicit arrow keys if you need them.
press key <user.keys>: key(keys)

chess <user.chess_keys>: key(chess_keys)
