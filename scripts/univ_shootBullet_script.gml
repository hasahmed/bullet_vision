// argument0: point_direction ----> used to determin the direction the bullet should go
// argumetn1: boolean ----> weather or not the fuction is being called from a controller. If it is then it sets vibrations

/* argument0 is a point_direction, random range to add a bit of randomness
to the direction of the bullet */
if(Player.bulletFireable){
p = argument0 + random_range(-3, 3); 
var calledFromController = argument1;
Crosshair.controllerPriority = calledFromController;
var heady = y + 10 - (sprite_height/2);

/*if(myDirection==0)headx=x+13
else if (myDirection==1)headx=x-20
else if (myDirection==2)headx=x+sprite_width/2
else headx=x-sprite_width/2*/

if(!instance_place(x,y,Warp)){
 bullet = instance_create(bulletx, bullety, Bullet);
// bullet.speed = 25 * global.delta;
 bullet.Speed = 25; //Speed is our own value, always 25 regardless of delta_time. FR independence is established in the bullet step event
 bullet.direction = p;
 bullet.image_angle = p;
 
 repeat(10){
    flash= instance_create(bulletx,bullety,particle);
    flash.speed = 4 +random(3)+hSpeed*sign(hSpeed);
    flash.direction= p +-10+random(20);
 }
 instance_create(bulletx,bullety,FlashEffect);
 casing=instance_create(bulletx,bullety,Casing)
 casing.vSpeed=-4+random(2)
 casing.hSpeed=3-random(6)
    
knockBack_script(3);
shakeScreen_script(3, .08); // screenshake handling
headRecoil_script(15, 35, room_speed * 0.1); //head kickback handling

if (calledFromController){
    gamepad_set_vibration(0, .1, .1); //sets the controller vibration to .1
    alarm[0] = .1 * room_speed; // The amount of time before turning off controller vibration
}

if(!control.mute){ 
    audio_play_sound(Shoot5,2,false);
    audio_sound_pitch(Shoot5, random_range(.85, 1.15));
}
}
}
