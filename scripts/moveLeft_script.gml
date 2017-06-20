Crosshair.controllerPriority = false;
playerDir = facing.left;
moveFrac = 1; // neccissary so that when going from gamepad to keyboard
// there isn't any left over fractional movement
l = true;
if (onGround)
{
    hSpeed -= speedUp;
    /*
    image_speed = animSpeed; //sets the image speed to animSpeed. Anim speed
    // is initilaized the the "initializePlayerValues_script" -hya
    
    
    if (image_index >= 7 || image_index <=3) image_index = 4; // in order to make
    // sure the correct sequences of images is playing. - hya
    */
}
else if(hSpeed>-maxSpeed) hSpeed -= airSpeedUp;

if (hSpeed < -maxSpeed&&knockbackTimer<=0||onGround&&hSpeed < -maxSpeed)
    hSpeed = -maxSpeed;
