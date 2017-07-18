if(image_index>=24){
    shakeScreen_script(5,.37)
    if(noise !=noone) audio_stop_sound(noise);
    if(!control.mute){//&&!audio_is_playing(Bomb_sound)){
        audio_play_sound(Bomb_sound,5,false);
    };
    newBomb = instance_create(x,y,Explosion);
    
    newBomb.thrownByBoss=thrownByBoss;
    instance_destroy();
};
