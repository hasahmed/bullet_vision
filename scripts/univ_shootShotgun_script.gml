// argument0: point_direction ----> used to determin the direction the bullet should go
// argumetn1: boolean ----> weather or not the fuction is being called from a controller. If so then it sets vibrations
var heady = y + 10 - (sprite_height/2); // roughly the position of the sprites head
var p = argument0;
var calledFromController = argument1;

if(!instance_place(x,y,Warp)){
if(shotgunFireable){
    if (calledFromController){
        gamepad_set_vibration(0, .8, .8);
        alarm[0] = .2 * room_speed;
    }
    shakeScreen_script(8, .15);
    knockBack_script(14);
    headRecoil_script(45, 75, room_speed * 0.45); //head kickback handling
    shotgunFireable = false; // shotgunFireable set to true after reload sound finishes playing. 
    bulletFireable = false;
    knockbackTimer=35;
    alarm[1] = 60 * audio_sound_length(shotgunSound); // plays reload sound only after shotgunSound has finished playing -hya
        
        if(!control.mute) {
            audio_play_sound(shotgunSound,2,false);
            audio_sound_pitch(shotgunSound, random_range(.95, 1.1));
        }
    
    //create pellets
    repeat(8){    
        bullet = instance_create(bulletx, bullety, shotgunBullet);
        bullet.direction = p -12.5+random(25);
        bullet.image_angle = bullet.direction;
    };
    
    //knockback
    if (!onGround){
        hSpeed = -1.2*knockBack * cos(pi/(180)*p);
        vSpeed = -0.5*knockBack + 0.5*knockBack*sin(pi/(180)*p);//split into two terms, -0.5*knockBack is a flat rate that makes every angle still give you some height
    }
    
    //particle effect
    repeat(20){
        flash = instance_create(bulletx,bullety,particle);
        flash.speed = 4+random(3)+hSpeed*sign(hSpeed)/2;
        flash.direction = p - 10 + random(20);
    }
    instance_create(bulletx,bullety,FlashEffect)
}
}
