settings():
    # Adjust the scale of the imgui
    imgui.scale = 1

    # Uncomment to set the speech timeout. This is the amount of time after you stop
    # speaking until Talon starts processing the spoken audio. Default is 0.3s.
    # speech.timeout = 0.3

    # Uncomment to enable dark mode for talon help menus
    # imgui.dark_mode = true

    # If `true`, automatically show the picker GUI when the file manager has focus
    user.file_manager_auto_show_pickers = false

    # Set the number of command lines to display per help page
    user.help_max_command_lines_per_page = 50

    # Set the number of contexts to display per help page
    user.help_max_contexts_per_page = 20

    # Uncomment to always sort help contexts alphabetically.
    # user.help_sort_contexts_by_specificity = false

    # Set the scroll amount for continuous scroll/gaze scroll
    user.mouse_continuous_scroll_amount = 80

    # If `true`, stop continuous scroll/gaze scroll with a pop
    user.mouse_enable_pop_stops_scroll = true

    # If `true`, stop mouse drag with a pop
    user.mouse_enable_pop_stops_drag = true

    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 1

    # If `true`, use a hissing noise to scroll continuously
    user.mouse_enable_hiss_scroll = false

    # If `true`, hide the continuous scroll/gaze scroll GUI
    user.mouse_hide_mouse_gui = false

    # If `true`, hide the cursor when enabling zoom mouse
    user.mouse_wake_hides_cursor = false

    # Set the amount to scroll up/down
    user.mouse_wheel_down_amount = 120

    # Set the amount to scroll left/right
    user.mouse_wheel_horizontal_amount = 40

    # If `true`, start mouse grid numbering on the bottom left (vs. top left)
    user.grids_put_one_bottom_left = true

    # Set the default number of command history lines to display
    user.command_history_display = 45

    # Set the total number of command history lines to display
    user.command_history_size = 45
    # Set the time window size for to for pop_twice_to_sleep and pop_twice_to_repeat. By default, the pops must be more than 0.1 seconds apart and less then 0.3 seconds, to reduce false positives
    user.double_pop_speed_minimum = 0.1
    user.double_pop_speed_maximum = 0.3

    # Uncomment to add a directory (relative to the Talon user dir) with additional
    # .snippet files. Changing this setting requires a restart of Talon.
    # user.snippets_dir = "snippets"

    # Uncomment to insert text longer than 10 characters (customizable) by pasting from
    # the clipboard. This is often faster than typing.
    # user.paste_to_insert_threshold = 10

    # Uncomment to enable context-sensitive dictation. This determines how to format
    # (capitalize, space) dictation-mode speech by selecting & copying surrounding text
    # before inserting. This can be slow and may not work in some applications. You may
    # wish to enable this on a per-application basis.
    # user.context_sensitive_dictation = true

    # Choose how to resize windows moved across physical screens (eg. via `snap next`).
    # Default is 'proportional', which preserves window size : screen size ratio.
    # 'size aware' keeps absolute window size the same, except full-height or
    # -width windows are resized to stay full-height/width.
    # user.window_snap_screen = "size aware"

    # Puts Talon into sleep mode if no commands are spoken for a defined period of time.
    # user.listening_timeout_minutes = 3

    # Time in seconds to wait for the clipboard to change when trying to get selected text
    # user.selected_text_timeout = 0.25

# Uncomment to enable the curse yes/curse no commands (show/hide mouse cursor).
# See issue #688 for more detail: https://github.com/talonhub/community/issues/688
# tag(): user.mouse_cursor_commands_enable

# Uncomment below enable pop_twice_to_wake
# Without this tag noise_trigger_pop is usually associated with pop to click actions
# Enabling this tag disables other pop to click actions in sleep mode, including pop to click
# tag(): user.pop_twice_to_wake

# Uncomment below enable pop_twice_to_repeat
# Enabling this tag will repeat the last command when two pops are heard within the allotted time window
# Without this tag noise_trigger_pop is usually associated with pop to click actions
# Enabling this tag disables other pop to click actions in command mode, including pop to click
# tag(): user.pop_twice_to_repeat

# Uncomment the below to enable support for saying numbers without a prefix.
# By default you need to say "numb one" to write "1". If you uncomment this,
# you can say "one" to write "1".
# tag(): user.unprefixed_numbers

vim dent:
	key('ctrl-v')
	key('tab')

key(f9):
    sound.set_microphone("None")

key(f10):
    sound.set_microphone("System Default")
#key(f11): speech.toggle()
wifi reconnect:
	key('f11')

shift <user.letter>:

speaker box:
	key('win-]')

speaker head:
	key('win-}')

screen on:
	key('insert')

screen off:
	#key('pause')
	key('scroll_lock')

#hi my name is:
#	mjajk

#auto hotkey restart:
#	user.system_command_nb("wsl.exe bash -c '. ~/.bashrc; ahk-test-run'")
start recording:
	key('win-ctrl-{')
stop recording:
	key('win-{')

#cursor will say cut, disable for now
#mouse also says cut
orient left:
	key('f1')

orient down:
	key('f2')

orient up:
	key('f3')

orient right:
	key('f4')


orient tiny left:
	key('f5')

orient tiny down:
	key('f6')

orient tiny up:
	key('f7')

orient tiny right:
	key('f8')



talon flame:
	user.insert_formatted("talon", "NOOP")
cig in:
	key('ctrl-c')
prefix:
	key('ctrl-\\')
#leader:
#	key('\\')



volume mute:
	edit.page_down()
volume unmute:
	edit.page_up()

page down:
	key('ctrl-down')
page up:
	key('ctrl-up')

terminal:
	key('win-1')
spider web:
	key('win-2')
minimize all:
	key('win-m')

wipe <number_small> left:
	key('backspace')
	repeat(number_small - 1)
wipe <number_small> right:
	key('delete')
	repeat(number_small - 1)

#clear right:
#	key('win-delete')

#cut [<number>] <user.arrow_key>:

#home:

#end:

#skis:

#twin:

#quote:

#righty:

control down:

control up:

control left:

control right:

super one:

super two:

#delete:

#insert:

#back tick:

#backslash:

#control backslash:

#prefix tab:

prefix grave:

ada typhon:

tab last:

