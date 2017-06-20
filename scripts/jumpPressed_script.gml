//allows the player to jump for some frames after falling off the edge
if(!onGround &&fallOffEdgeTimer>0&&numJumpsPerSpacePressed<1){
    numJumpsPerSpacePressed++;
    vSpeed = -10;
    if(!global.mute)audio_play_sound(Jump,2,false);
}

// from what I can tell this script is never called -hya
/*
if (!onGround && fallOffEdgeTimer <= 0 && inAirJumps > 0 && numJumpsPerSpacePressed < 1)
{
    
    //audio_play_sound(Jump,2,false)
    inAirJumps -= 1;
    vSpeed = -jumpPower * .8;
    numJumpsPerSpacePressed = 1; // add 1 to make sure player doesn't "bounce"
    //set back to 0 in jumpReleased_script /unfinished/ -hya
    show_debug_message(numJumpsPerSpacePressed);
    show_debug_message("pooop");
    
    if (sign(hSpeed == 0)) i = random(1) - random(2);
}*/

