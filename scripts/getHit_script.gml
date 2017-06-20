if(Player.invincibilityTimer<=0){//invincibilityTimer code is in timer control
    if(!global.mute)audio_play_sound(playerHit,10,false);
    Player.hp -=1;
    Player.invincibilityTimer =40;
    if(argument0>0){
        Player.hSpeed = argument0*sign(Player.x-x);//knocks you away from the enemy
        Player.vSpeed = argument0*(-1/6);//launches you up just a little bit so it feels better
    }
    shakeScreen_script(argument1,argument2);
};
