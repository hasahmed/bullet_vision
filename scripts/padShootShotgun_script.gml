controllerPriority = true;
var p; //the direction that the shotgun will be directed
    //universalShotgun_script();
    var heady = y + 8 - (sprite_height/2); // roughly the position of the sprites head
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
    
 if (!rsNeut) {
  //p: the point_direction using players head and the right analog stick
    p = point_direction(x, heady, (x + gamepad_axis_value(0, gp_axisrh)),
                                        heady + gamepad_axis_value(0, gp_axisrv));
    

 }
else if (lsNeut) {
    if (onGround){
        if (playerDir == facing.right)
            p = point_direction(x, heady, x + 1, heady);
        else p = point_direction(x, heady, x -1, heady);
    }
    //in the case that the player jumps and is not pressing the sticks any direction, the shutgun will shoot downwards
    else p = point_direction(x, heady, x, heady + 1);
        
    }
    else { // case: left stick controls direction of shooting
         p = point_direction(x, heady, x + lshv, heady + lsvv);
    }
    

univ_shootShotgun_script(p, true);

