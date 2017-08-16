//Check for vertical collision
floatHeight=argument0
if (collision_rectangle(x + (sprite_width / 2),y + (sprite_height / 2 + floatHeight) * sign(vSpeed),x - (sprite_width / 2) ,y + ((sprite_height / 2) + abs(vSpeed) + floatHeight) * sign(vSpeed),Wall_p,0,true))
{
    if(vSpeed>0&&floatHeight==0)move_contact_solid(270,vSpeed)
    vSpeed = 0
    onGround = true
}

//if going to fall off ledge
//collision line +30 on y so that it works with floating dudes

//NOTE: Sprite_width is negative when going left
if (onGround==true && !collision_line(x + ceil(sprite_width/2)  , y + sprite_height/2+ floatHeight,x+ceil(sprite_width/2),y+sprite_height/2+floatHeight+30, Wall_p,0,true)){
    hSpeed *= -1
}

//if going to hit wall
else if(collision_line(x+(abs(sprite_width)/2/*+3*/) * sign(hSpeed), y+floor(sprite_height/2)-1+floatHeight,x+(abs(sprite_width)/2/*+3*/) * sign(hSpeed),y-(sprite_height/2)+floatHeight,Wall,false,false)){
    hSpeed *= -1
}
