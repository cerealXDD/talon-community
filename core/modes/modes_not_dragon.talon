mode: command
mode: dictation
mode: sleep
not speech.engine: dragon
-
# The optional <phrase> afterwards allows these to match even if you say arbitrary text
# after this command, without having to wait for the speech timeout.

# This is handy because you often need to put Talon asleep in order to immediately
# talk to humans, and it's annoying to have to say "sleep all", wait for the timeout,
# and then resume your conversation.

# With this, you can say "sleep all hey bob" and Talon will immediately go to
# sleep and ignore "hey bob". Note that subtitles will show "sleep all hey bob",
# because it's part of the rule definition, but "hey bob" will be ignored, because
# we don't do anything with the <phrase> in the body of the command.

#^talon wake [<phrase>]$: speech.enable()

# We define this *only* if the speech engine isn't Dragon, because if you're using Dragon,
# "wake up" is used to specifically control Dragon, and not affect Talon.
#
# It's a useful and well known command, though, so if you're using any other speech
# engine, this controls Talon.
#^(wake up)+$: speech.enable()
#^wake up wake up wake up [<phrase>]$: speech.enable()
#^awaken awaken [awaken]+$: speech.enable()
#^revival revival$: speech.enable()

^revival revival revival [<phrase>]$:
	speech.enable()
	key('insert')

#^revival revival transit <phrase>:
#	speech.enable()
#	key('insert')
#	core.repeat_partial_phrase(1)

# We define this *only* if the speech engine isn't Dragon, because if you're using Dragon,
# "go to sleep" is used to specifically control Dragon, and not affect Talon.
#
# It's a useful and well known command, though, so if you're using any other speech
# engine, this controls Talon.
#^go to sleep go to sleep [<phrase>]$: speech.disable()
#^nocturnal nocturnal [<phrase>]$: speech.disable()
#^nocturnal nocturnal$: speech.disable()

twilight twilight twilight [<phrase>]$: speech.disable()

#nocturnal nocturnal nocturnal [<phrase>]$:
hibernate hibernate hibernate [<phrase>]$:
	speech.enable()
	speech.disable()
	key('scroll_lock')

#^talon sleep [<phrase>]$: speech.disable()

^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
