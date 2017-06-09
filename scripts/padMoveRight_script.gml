deadVal = .20
var lshv = gamepad_axis_value(0, gp_axislh); //Left Stick Horizontal Value: so I dont need to write so much
    var lsvv = gamepad_axis_value(0, gp_axislv); //Left Stick Vertical Value: so I dont need to write so much

    //checks to see if the left stick is in a neutral position.
    if (lshv <= deadVal && lshv >= -deadVal && lsvv <= deadVal && lsvv >= -deadVal)
        var lsNeut = true; //Left Stick Neutral
    else var lsNeut = false;


Crosshair.controllerPriority = true;
r = true;
playerDir = facing.right;
moveFrac = gamepad_axis_value(0, gp_axislh); // assigns move frac to the value
    // of the axis of the left stick in order to make the player move
    // slowly if the stick isn't pressed to its maximum angle -hya
if (onGround){
        hSpeed += speedUp;        
}
else if(!lsNeut&&hSpeed<maxSpeed)hSpeed += airSpeedUp;  

if (hSpeed >= maxSpeed&&knockbackTimer<=0||onGround&&hSpeed > maxSpeed)
    hSpeed = maxSpeed;
