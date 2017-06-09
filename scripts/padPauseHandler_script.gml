///padPauseHandler_script();

/* this script calls executes the P pressed key event located
in the Control object */
if(gamepad_button_check_pressed(0, gp_start)){
    with Control event_perform(ev_keypress, ord('P'));
}
