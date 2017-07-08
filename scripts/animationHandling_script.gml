if(onGround){
    if(!global.mute){
        if(floor(image_index)==11||floor(image_index)==16||floor(image_index)==21||floor(image_index)==26&&!audio_is_playing(footstep3))
            audio_play_sound(footstep3, 1, 0);
        
    }

    if(playerDir == facing.right){
        if(hSpeed == 0){
            runningDir = running.still;
            image_speed = 0.1;
            myDirection = 0//my own variable, used in muzzle flash
            if (image_index >= 3) image_index = 0;
        }
    
        /* running to the right */
        else if (hSpeed > 0){
            runningDir = running.right;
            if(image_index < 8) image_index = 8;
            image_speed = 0.23;
            myDirection = 2;
            if(image_index >= 18) image_index = 8; //keep animation looping
        }
        else {//for shooting behind you
            myDirection= 2;
            image_speed =- 0.2;
            if(image_index < 8 || image_index > 18) image_index = 17.99;
        }
    };
    else if(playerDir == facing.left){
        if(hSpeed == 0){
            runningDir = running.still;
            image_speed = 0.1;
            myDirection = 1;
            if (image_index >= 7 || image_index < 4) image_index = 4;
        }
        /* running to the left */
        else if(hSpeed < 0){
            if(image_index < 18) image_index = 18;
            image_speed = 0.23;
            myDirection = 3;
            runningDir = running.left;
            if(image_index>28) image_index = 18
        }
        else {
            image_speed =- 0.2;
            if(image_index < 18) image_index = 27.99;
            myDirection = 3;
        }
    }
}
else{
    if(blurTimer<=0){
        if(playerDir == facing.right){
            image_index=30
        }
        else{
            image_index=31
        }
    }
    else{
        if (playerDir == facing.right){
            image_index=28
        }
        else{
            image_index=29
        }
    }
}
if(blurTimer>0)blurTimer-=1
