# -1 because we are repeating, so the initial command counts as one
#<user.ordinals>: core.repeat_command(ordinals - 1)
#<number_small> times: core.repeat_command(number_small - 1)
#(repeat that | twice): core.repeat_command(1)
#repeat again: core.repeat_command(1)
#repeat that <number_small> [times]: core.repeat_command(number_small)
#repeat <number_small> times: core.repeat_command(number_small)

#repeat part [<number_small> times]:
#    core.repeat_command(number_small or 1)

#^repeat [<number_small>]$:
#    core.repeat_partial_phrase(number_small or 1)

^ditto <user.ordinals>$:
    core.repeat_partial_phrase(ordinals)

^ditto ditto$:
    core.repeat_partial_phrase(2)

^ditto twice$:
    core.repeat_partial_phrase(2)

^ditto$:
    core.repeat_partial_phrase(1)

#^(repeat)+$:
#    core.repeat_partial_phrase(number_small or 1)
