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

        if (sign(vSpeed) == -1){//hitting ceiling
            vSpeed = 0;
            move_contact_solid(90,0);
          
        }
        else if(sign(vSpeed)==1) {//landing
            blurTimer=3 //activates blur sprite for 5 frames
            move_contact_solid(270,0);
            if(vSpeed>0&&!control.mute&&!audio_is_playing(thud))audio_play_sound(thud,2,0);
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
    
else
{
    onGround = false;
}


//Check for horizontal collision
if (collision_rectangle(x + (sprite_width / 2) * sign(hSpeed),y + (sprite_height / 2) - 1,
    x + ((sprite_width / 2)  + abs(hSpeed)) * sign(hSpeed),
    y - (sprite_height / 2) + 1,
    Wall,
    false,
    true) != noone)
    {
        hSpeed = 0
    }
