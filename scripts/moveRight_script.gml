Crosshair.controllerPriority = false;
playerDir = facing.right;
moveFrac = 1; // neccissary so that when going from gamepad to keyboard
// there isn't any left over fractional movement

r = true;
if (onGround){
        hSpeed += speedUp;
        /*
        image_speed = animSpeed;// sets speeed of animation to animSpeed.
        //initialized in "initializePlayerValues_script"
        
        if (image_index >= 3) image_index = 0; // makes sure the images aren't going
        // past image 3 because image_index 4 is facing left
        */
}
else if(hSpeed<maxSpeed) hSpeed += airSpeedUp;
   
if (hSpeed > maxSpeed&&knockbackTimer<=0||onGround&&hSpeed > maxSpeed) //So that holding left after shotgun jumping doesn't slow you down.
    hSpeed = maxSpeed;
