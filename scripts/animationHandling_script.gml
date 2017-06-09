if(!global.mute&&onGround){
    if(image_index>11&&image_index<12&&!audio_is_playing(footstep3)) audio_play_sound(footstep3,1,0);
    else if(image_index>16&&image_index<17&&!audio_is_playing(footstep3)) audio_play_sound(footstep3,1,0);
    else if(image_index>21&&image_index<22&&!audio_is_playing(footstep3)) audio_play_sound(footstep3,1,0);
    else if(image_index>26&&image_index<27&&!audio_is_playing(footstep3)) audio_play_sound(footstep3,1,0);
}

if(playerDir == facing.right){
    if(hSpeed==0){
        image_speed=.2;
        myDirection=0//my own variable, used in muzzle flash
        if (image_index>=3)image_index=0;
    }
    else if (hSpeed>0){
        if(image_index<8) image_index=8;
        image_speed=.23;
        myDirection=2
        if(image_index>=18) image_index=8;
    }
    else {//for shooting behind you
        myDirection=2
        image_speed=-.2;
        if(image_index<8||image_index>18) image_index= 17.99;
    }
};
else if(playerDir == facing.left){
    if(hSpeed==0){
        image_speed=.2;
        myDirection=1
        if (image_index>=7||image_index<4) image_index=4;
    }
    else if(hSpeed<0){
        if(image_index<18) image_index=18;
        image_speed=.23;
        myDirection=3
    }
    else {
        image_speed=-.2;
        if(image_index<18) image_index=27.99;    
        myDirection=3
    }
};
