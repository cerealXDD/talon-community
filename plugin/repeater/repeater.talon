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

#^ditto <user.ordinals>$:
#^repeat <user.ordinals>$:
#    core.repeat_partial_phrase(ordinals)

#^repeat first$:
^repeat once$:
#^repeat onus$:
    core.repeat_partial_phrase(1)

^repeat twice$:
    core.repeat_partial_phrase(2)

#^repeat trip$:
#    core.repeat_partial_phrase(3)

^repeat fifth$:
    core.repeat_partial_phrase(5)

#^repeat decade$:
^repeat deck$:
    core.repeat_partial_phrase(10)

^repeat multi twentieth$:
    core.repeat_partial_phrase(20)

^repeat multi thirtieth$:
    core.repeat_partial_phrase(30)

^repeat multi fortieth$:
    core.repeat_partial_phrase(40)

^repeat multi fiftieth$:
    core.repeat_partial_phrase(50)

^repeat multi sixtieth$:
    core.repeat_partial_phrase(60)

^repeat multi seventieth$:
    core.repeat_partial_phrase(70)

^repeat multi eightieth$:
    core.repeat_partial_phrase(80)

^repeat multi ninetieth$:
    core.repeat_partial_phrase(90)

#^ditto ditto$:
#    core.repeat_partial_phrase(2)
#
#^ditto twice$:
#    core.repeat_partial_phrase(2)
#
#^ditto once$:
#    core.repeat_partial_phrase(1)


#^ditto first$:
#
#^ditto second$:

#^(repeat)+$:
#    core.repeat_partial_phrase(number_small or 1)
