/*if (keyboard_check_pressed(ord("A")))
    pressedLeft_script();
    
if (keyboard_check_pressed(ord("D"))) pressedRight_script();*/

if (keyboard_check_released(ord("D"))) rReleased_script();

if (keyboard_check(ord("D"))) moveRight_script();
    
if (keyboard_check(ord("A")))moveLeft_script();

if (keyboard_check_pressed(ord("S"))) downPressed_script();
else if (keyboard_check_released(ord("S"))) downReleased_script();




if (keyboard_check_pressed(vk_space)||keyboard_check_pressed(ord("W"))) jumpPressed_script();

if (keyboard_check(vk_space)||keyboard_check(ord("W"))) jumpHeld_script();
else if (keyboard_check_released(vk_space)||keyboard_check_released(ord("W"))) jumpReleased_script();

//if (keyboard_check_pressed(ord("R"))) reload_script();

