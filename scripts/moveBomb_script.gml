//sideways motion
x+=hSpeed;
if(abs(hSpeed)<1) hSpeed=0;

//gravity
y+=vSpeed;
vSpeed+=grav;

//Check for vertical collision
if (collision_rectangle(x + (sprite_width / 2),y + (sprite_height / 2) * sign(vSpeed),x - (sprite_width / 2),y + ((sprite_height / 2) + abs(vSpeed)) * sign(vSpeed),Wall_p,0,true))
{
    if (sign(vSpeed) == -1)
        move_contact_all(90,vSpeed);
    else
        move_contact_all(270,vSpeed);
    //bounce
    if(vSpeed>8){
        vSpeed *= -.4;
        hSpeed*=.7;
    };
    else if(vSpeed<=8) vSpeed =0;
    onGround = true;
}
else onGround=false;

//Check for horizontal collision
if (collision_rectangle(x + (sprite_width / 2) * sign(hSpeed),y + (sprite_height / 2) - 1,x + ((sprite_width / 2)  + abs(hSpeed)) * sign(hSpeed),y - (sprite_height / 2) + 1,Wall,false,true)){
    hSpeed *= -.7;
};

//friction
if(onGround&&hSpeed>0)hSpeed-=.7;
if(onGround&&hSpeed<0)hSpeed+=.7;
