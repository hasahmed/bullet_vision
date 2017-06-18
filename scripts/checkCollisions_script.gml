if(vSpeed<0)mySignVSpeed=-1//my own sign function because vSpeed=0 was causing problems. 
else mySignVSpeed=1
//Check for vertical collision
if (collision_rectangle(x + (sprite_width / 2) -1,
    y + (sprite_height / 2) * mySignVSpeed+1,
    x - (sprite_width / 2)+1,//this +1 is to fix move contact all
    y + ((sprite_height / 2) + abs(vSpeed)) * mySignVSpeed+1,//testing global.delta
    Wall,
    false,
    true) != noone)
    {
        //vSpeed = 0;
        
        if (sign(vSpeed) == -1){
            vSpeed = 0;
           move_contact_solid(90,0);
        }
        else {
            move_contact_solid(270,0);
            if(vSpeed>0&&!global.mute&&!audio_is_playing(thud))audio_play_sound(thud,2,0);
            vSpeed=0;
        }

        
        
    }
    
//Check if standing on a wall


if (collision_rectangle(x + (sprite_width / 2),
    y + (sprite_height / 2),
    x - (sprite_width / 2),
    y + ((sprite_height / 2) + extraJumpBuffer),
    Wall,
    false,
    true) != noone)
    {
        onGround = true;
        inAirJumps = maxInAirJumps;
        fallOffEdgeTimer = fallOffEdgeTimerMax;
    }

/*
var wallId = instance_place(x, (y + (sprite_height/2)) + (vSpeed * global.delta), Wall);
if(wallId != noone){
    //y = wallId.y - (wallId.sprite_height/2) - (sprite_height/2);
    onGround = true;
    inAirJumps = maxInAirJumps;
    fallOffEdgeTimer = fallOffEdgeTimerMax;
}
*/
else
{
    onGround = false;
}


//Check for horizontal collision
// needs work: doesn't work going left
// suspect because player image is reversed, but collision box does not reflect that
if (collision_rectangle(x + (sprite_width / 2) * sign(hSpeed),y + (sprite_height / 2) - 1,
    x + ((sprite_width / 2)  + abs(hSpeed)) * sign(hSpeed),
    y - (sprite_height / 2) + 1,
    Wall,
    false,
    true) != noone)
    {
        hSpeed = 0;
        //movingPlatformCollision=true;
    }
    
//if(collision_line(x+sprite_width/2+1,y-sprite_height/2+3,x+sprite_width/2+1,y+sprite_height/2,Wall,0,1)) movingPlatformCollision=true;
//else movingPlatformCollision=false;
