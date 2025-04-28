mouse start grid:
    user.grid_select_screen(1)
    user.grid_activate()

mouse start grid win:
    user.grid_place_window()
    user.grid_activate()

mouse start grid <user.number_key>+:
    user.grid_activate()
    user.grid_narrow_list(number_key_list)

mouse start grid screen [<number>]:
    user.grid_select_screen(number or 1)
    user.grid_activate()
