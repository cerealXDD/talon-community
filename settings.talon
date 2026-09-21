settings():
    # Adjust the scale of the imgui
    #imgui.scale = 1.4
    #imgui.scale = 1.5

    #this is so context eclipse fits
    imgui.scale = 1.2

    # Uncomment to set the speech timeout. This is the amount of time after you stop
    # speaking until Talon starts processing the spoken audio. Default is 0.3s.
    # speech.timeout = 0.3
    speech.timeout = 0.5

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

    # Set the duration to hold mouse clicks in milliseconds. 0 means no hold.
    # In some full-screen applications, particularly games, mouse clicks may not
    # be recognized unless held for a short duration.  If this occurs, try
    # starting with a setting of 16.
    user.mouse_click_hold = 0

    # If `true`, start mouse grid numbering on the bottom left (vs. top left)
    user.grids_put_one_bottom_left = true

    # If `true`, show a zoomed in version of the mouse grid when it becomes sufficiently small
    user.grid_show_zoomed = true

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

    # Set to the number of spaces to use for each tab when inserting snippets as raw text (without editor support). Set to -1 to insert tabs as tabs, such as in code editors that can expand tabs in pasted or typed text. This setting is provided for applications like web browsers and chat apps that do not understand code formatting.
    user.snippet_raw_text_spaces_per_tab = 4

    # Uncomment to insert text longer than 10 characters (customizable) by pasting from
    # the clipboard. This is often faster than typing.
    # Note: some contexts (e.g. the terminal tag) may override this global setting.
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

    # Mode enabled on Talon launch (command by default; dictation or sleep are other options)
    # user.initial_mode = "sleep"

    # Puts Talon into sleep mode if no commands are spoken for a defined period of time.
    # user.listening_timeout_minutes = 3

    # Time in seconds to wait for the clipboard to change when trying to get selected text
    # user.selected_text_timeout = 0.25

    # Time in seconds to sleep after inserting text with `insert_between` (e.g. when using paired delimiters like 'box' or 'round'), before moving the cursor back. Useful to set on a per-application basis, to prevent moving the moving the cursor before text is inserted.
    # user.insert_between_wait = 0

    # If deprecated commands should throw an exception, which stops the commands from running. You might find this helps you learn the new replacement commands faster.
    # user.strict_command_deprecation = true

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

peridot dot:
	insert('..')

key(keypad_minus):
    sound.set_microphone("None")

key(keypad_plus):
    sound.set_microphone("System Default")

key(keypad_divide):
	speech.disable()

key(keypad_multiply):
	speech.enable()

#key(f11): speech.toggle()
wifi reconnect:
	key(keypad_enter)

auto hotkey kill:
#hotkey kill:
	key('win-ctrl-e')

#speaker box:
#	key('win-]')

orient north:
	key(keypad_8)

orient east:
	key(keypad_6)

orient south:
	key(keypad_2)

orient west:
	key(keypad_4)


orient tiny north:
	key(alt-keypad_8)

orient tiny east:
	key(alt-keypad_6)

orient tiny south:
	key(alt-keypad_2)

orient tiny west:
	key(alt-keypad_4)


orient northeast:
	key(keypad_9)

orient southeast:
	key(keypad_3)

orient southwest:
	key(keypad_1)

orient northwest:
	key(keypad_7)


orient tiny northeast:
	key(alt-keypad_9)

orient tiny southeast:
	key(alt-keypad_3)

orient tiny southwest:
	key(alt-keypad_1)

orient tiny northwest:
	key(alt-keypad_7)


delete plurals:
	key('backspace')
	key('delete')

wipe <number_small> left:
	key('backspace')
	repeat(number_small - 1)

wipe <number_small> right:
	key('delete')
	repeat(number_small - 1)


#wipe one left:
#
#wipe zero left:
#
#wipe one right:
#
#wipe zero right:


context menu:
	key('win-ctrl-v')

#force latex and struck

#letter:

#upper:

#ada typhon:

#tab last:

# Uncomment the below to enable the experimental window layout commands
# defined in window_layout.talon
# tag(): user.experimental_window_layout
