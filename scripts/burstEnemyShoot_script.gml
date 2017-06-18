if(shotTimer==0||shotTimer==5||shotTimer==10){
    if(!global.mute)audio_play_sound(Shoot,2,false);
    
    //create bullet
    bullet = instance_create(x,y,enemyBullet);
    bullet.speed = bulletSpeed;
    bullet.direction = point_direction(x, y, Player.x, Player.y)-4+random(8);
    bullet.image_angle = bullet.direction;
 
    //particle effect
    for(i=0;i<10;i+=1){
        flash= instance_create(x,y,particle);
        flash.speed = 4+random(3);
        flash.direction=bullet.direction-5+random(10);        
    if(shotTimer==0)shotTimer= rateOfFire;
    };
};
if(shotTimer>0)shotTimer -=1;
if(burstTimer>0)burstTimer -=1;
