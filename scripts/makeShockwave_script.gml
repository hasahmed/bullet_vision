if(shockwaveTimer>0)shockwaveTimer -=1
if(shockwaveTimer==0&&collision_line(x-500,y,x+500,y,Player,0,1)){
    //stop enemy
    storedHSpeed=hSpeed
    hSpeed*=.000001//not setting hSpeed to zero because xScale is set to sign(hSpeed), so it disappears
    
    shockwaveTimer=rateOfFire
    
    //create shockwave
    ShockWave=instance_create(x,y+sprite_height/2,RockShockwave)
    ShockWave.goLeft=true
    ShockWave.goRight=true
}
//move again
if(shockwaveTimer==rateOfFire-60)hSpeed=storedHSpeed
