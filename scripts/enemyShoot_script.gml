if(shotTimer==0){
    
    shotTimer= rateOfFire
    if(!global.mute){
        audio_play_sound(LaserShot,2,false)
        audio_sound_pitch(LaserShot, random_range(.85, 1.15));
    }
    
    //create bullet
    bullet = instance_create(x,y,enemyBullet);
    bullet.speed = bulletSpeed;
    bullet.direction = point_direction(x, y, Player.x, Player.y)-5+random(10);
    bullet.image_angle = bullet.direction;
 
}
if(shotTimer>0)shotTimer -=1
