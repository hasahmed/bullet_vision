if(spikeTimer>0){
    spikeTimer -=1
    if(instance_place(Player.x, Player.y + Player.sprite_height / 2, Wall)!= noone) 
        lastTouchedBlock = instance_place(Player.x, Player.y + Player.sprite_height / 2, Wall)
}
if(spikeTimer==0){
    //stop enemy
    storedHSpeed=hSpeed
    hSpeed*=.000001//not setting hSpeed to zero because xScale is set to sign(hSpeed), so it disappears
    
    spikeTimer=rateOfFire
    
    //create spike
    if(distance_to_object(Player)<range)instance_create(lastTouchedBlock.x,lastTouchedBlock.y,Spike)
}
//move again
if(spikeTimer==rateOfFire-60)hSpeed=storedHSpeed
