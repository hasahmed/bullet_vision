distance=argument0;

bomb=instance_create(x,y,Bomb);{
    bomb.thrownByBoss=argument1;
    bomb.hSpeed=sign(distance)*5*ln(abs(distance)/92+1);

    time=distance/bomb.hSpeed;
    
    bomb.vSpeed=(-bomb.grav*time/2)+(52/time)+verticalDistance/time;

}
