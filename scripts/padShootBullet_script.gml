
//universalShootBullet_script();
controllerPriority = true;
var deadVal = 0.20; // the max position that my controller "sticks" to.
    // i.e. the highest value it will stay at without me holding it there
    
var rshv = gamepad_axis_value(0, gp_axisrh); //Right Stick Horizontal Value: so I dont need to write so much
var rsvv = gamepad_axis_value(0, gp_axisrv); //Right Stick Vertical Value: so I dont need to write so much

//checks to see if the right stick is in a neutral position.
if (rshv <= deadVal && rshv >= -deadVal && rsvv <= deadVal && rsvv >= -deadVal)
    var rsNeut = true; // Right Stick Neutral
else var rsNeut = false;

var lshv = gamepad_axis_value(0, gp_axislh); //Left Stick Horizontal Value: so I dont need to write so much
var lsvv = gamepad_axis_value(0, gp_axislv); //Left Stick Vertical Value: so I dont need to write so much

//checks to see if the left stick is in a neutral position.
if (lshv <= deadVal && lshv >= -deadVal && lsvv <= deadVal && lsvv >= -deadVal)
    var lsNeut = true; //Left Stick Neutral
else var lsNeut = false;

var heady = y + 8 - (sprite_height/2); // roughly the position of the sprites head


//vibration
gamepad_set_vibration(0, .1, .1); //sets the controller vibration to .1
alarm[0] = 7; // sets timer 0 to 5 frames. The amount of time before turning off controller vibration
if (!rsNeut){
  //point_direction using players head and the right analog stick
    var p = point_direction(x, heady, x + rshv, heady + rsvv) + random_range(-3, 3);
    univ_shootBullet_script(p, true);

}
else if (lsNeut){
  //point_direction in front of player, both sticks neutral
    if (playerDir == facing.right)
        var p = point_direction(x, heady, x + 1, heady) + random_range(-3, 3);
    else var p = point_direction(x, heady, x -1, heady) + random_range(-3, 3);
    univ_shootBullet_script(p, true);

}
else {
  //point_direction using players head and the left analog stick
    var p = point_direction(x, heady, x + lshv, heady + lsvv) + random_range(-3, 3);
    univ_shootBullet_script(p, true);

}
