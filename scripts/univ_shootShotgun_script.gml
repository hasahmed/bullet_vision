// argument0: point_direction ----> used to determin the direction the bullet should go
// argumetn1: boolean ----> weather or not the fuction is being called from a controller. If so then it sets vibrations
var heady = y + 10 - (sprite_height/2); // roughly the position of the sprites head
var p = argument0;
var calledFromController = argument1;

/*if(myDirection==0)headx=x+13
else if (myDirection==1)headx=x-20
else if (myDirection==2)headx=x+sprite_width/2
else headx=x-sprite_width/2*/

if(shotgunFireable){
    if (calledFromController){
        gamepad_set_vibration(0, .8, .8);
        alarm[0] = .2 * room_speed;
    }
    shakeScreen_script(8, .15);
    knockBack_script(14);
    headRecoil_script(45, 75, room_speed * 0.45); //head kickback handling
    shotgunFireable = false; // shotgunFireable set to true after reload sound finishes playing. 
    knockbackTimer=35;
    alarm[1] = 60 * audio_sound_length(shotgunSound); // plays reload sound only after shotgunSound has finished playing -hya
        
        if(!global.mute) {
            audio_play_sound(shotgunSound,2,false);
            audio_sound_pitch(shotgunSound, random_range(.95, 1.1));
        }
    
    //create pellets
    for(i=0;i<8;i+=1){    
        bullet = instance_create(headx, heady, shotgunBullet);
        bullet.direction = p -12.5+random(25);
        bullet.image_angle = bullet.direction;
    };
    
    //knockback
    if (!onGround){
        hSpeed = -1.2*knockBack * cos(pi/(180)*p);
        vSpeed = -0.5*knockBack + 0.5*knockBack*sin(pi/(180)*p);//split into two terms, -0.5*knockBack is a flat rate that makes every angle still give you some height
    }
    
    //particle effect
    for(i=0;i<20;i+=1){
        flash = instance_create(headx,heady,particle);
        flash.speed = 4+random(3)+hSpeed*sign(hSpeed)/2;
        flash.direction = p - 10 + random(20);
    }
    instance_create(headx,heady,FlashEffect)
    instance_create(headx,heady,FlashEffect);
    /*if(global.mute){
        //create casing
        casing=instance_create(headx,heady,Casing)
        casing.vSpeed=-7+random(3)
        casing.hSpeed=3-random(6)
        casing.image_blend=c_red
    }*/
}
