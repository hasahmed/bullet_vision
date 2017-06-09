var deadVal = 0.20; // the max position that my controller "sticks" to.
    // i.e. the highest value it will stay at without me holding it there


//sticks

  //left stick
    //pressed left
    if (gamepad_axis_value(0, gp_axislh) <= -deadVal) padMoveLeft_script();
    else padLeftNotPressed_script();
    //pressed right
    if (gamepad_axis_value(0, gp_axislh) >= deadVal) padMoveRight_script();
    else padRightNotPressed_script();
    //pressed down
    if (gamepad_axis_value(0, gp_axislv) >= .70) padDownPressed_script();
    else if (downReleased_bool) padDownReleased_script();
  //right stick
    //pressed right
    if (gamepad_axis_value(0, gp_axisrh) >= deadVal) padRightStickPressedRight_script();
    else if (gamepad_axis_value(0, gp_axisrh) <= -deadVal) padRightStickPressedLeft_script();

//buttons

    //left bumper pressed
    if (gamepad_button_check_pressed(0, gp_shoulderl) || gamepad_button_check_pressed(0, gp_face1))
        jumpPressed_script();
    //left bumper held
    if (gamepad_button_check(0, gp_shoulderl) || gamepad_button_check(0, gp_face1))
        jumpHeld_script();
    //left bumper released
    else if (gamepad_button_check_released(0, gp_shoulderl)
        || gamepad_button_check_released(0, gp_face1)) jumpReleased_script();
    //right trigger pressed
    if (gamepad_button_check_pressed(0, gp_shoulderrb)) padShootBullet_script();
    //right bumper pressed
    else if (gamepad_button_check_pressed(0, gp_shoulderr)
         || gamepad_button_check_pressed(0, gp_shoulderlb)) padShootShotgun_script();
    
    // x pressed
    if (gamepad_button_check_pressed(0, gp_face3)){
        with TextBox event_perform(ev_keypress, ord('E'));
        //event_perform(ev_keyboard, ord('E'));
        //event_perform(ev_keyrelease, ord('E'));
        //show_debug_message('x pressed');
    } //reload_script();
