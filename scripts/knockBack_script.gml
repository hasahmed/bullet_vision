var knockBackVal = argument0;
if (playerDir == facing.right&&!collision_line(x-(sprite_width/2)-knockBackVal , y+(sprite_height/2)-6,x-(sprite_width/2)-knockBackVal ,y-(sprite_height/2),Wall,false,false)) {
    //Checking for collision with a wall behind you -Ben
    x -= knockBackVal;
}
else if (playerDir == facing.left&&!collision_line(x+(sprite_width/2)+knockBackVal , y+(sprite_height/2)-6,x+(sprite_width/2)+knockBackVal ,y-(sprite_height/2),Wall,false,false)){
    x += knockBackVal;
}
