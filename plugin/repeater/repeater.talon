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
#^recurse repeat$:
#^repeat onus$:
^recurse peat$:
    core.repeat_partial_phrase(1)

^recurse twice$:
    core.repeat_partial_phrase(2)

#^repeat trip$:
#    core.repeat_partial_phrase(3)

#^recurse fifth$:
^recurse faith$:
    core.repeat_partial_phrase(5)

#^repeat decade$:
^recurse deck$:
    core.repeat_partial_phrase(10)

^recurse multi twentieth$:
    core.repeat_partial_phrase(20)

^recurse multi thirtieth$:
    core.repeat_partial_phrase(30)

^recurse multi fortieth$:
    core.repeat_partial_phrase(40)

^recurse multi fiftieth$:
    core.repeat_partial_phrase(50)

^recurse multi sixtieth$:
    core.repeat_partial_phrase(60)

^recurse multi seventieth$:
    core.repeat_partial_phrase(70)

^recurse multi eightieth$:
    core.repeat_partial_phrase(80)

^recurse multi ninetieth$:
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
