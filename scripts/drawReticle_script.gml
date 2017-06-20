var deadVal = 0.20; // the max position that my controller "sticks" to.
    // i.e. the highest value it will stay at without me holding it there
    
var rshv = gamepad_axis_value(0, gp_axisrh); //Right Stick Horizontal Value: so I dont need to write so much
var rsvv = gamepad_axis_value(0, gp_axisrv); //Right Stick Vertical Value: so I dont need to write so much

//checks to see if the right stick is in a neutral position.
if (rshv <= deadVal && rshv >= -deadVal && rsvv <= deadVal && rsvv >= -deadVal)
    var rsNeut = true; // Right Stick Neutral
else var rsNeut = false;

var lshv = gamepad_axis_value(0, gp_axislh); //Left Stick Horizontal Value: so I dont need to write so much
var lsvv = gamepad_axis_value(0, gp_axislv); //Left Stick Vertical Value: so I dont need to write so much

//checks to see if the left stick is in a neutral position.
if (lshv <= deadVal && lshv >= -deadVal && lsvv <= deadVal && lsvv >= -deadVal)
    var lsNeut = true; //Left Stick Neutral
else var lsNeut = false;

var heady = y + 8 - (sprite_height/2); // roughly the position of the sprites head
/*
if(!rsNeut)
draw_sprite(crosshair_s, 0, x+200*gamepad_axis_value(0,gp_axisrh),heady+200*gamepad_axis_value(0,gp_axisrv));
//draw_circle(x+200*gamepad_axis_value(0,gp_axisrh),heady+200*gamepad_axis_value(0,gp_axisrv),10,true);

else if (rsNeut&&!lsNeut)
draw_sprite(crosshair_s, 0,  x+200*gamepad_axis_value(0,gp_axislh)*3/2, heady+200*gamepad_axis_value(0,gp_axislv)*3/20);
//draw_circle(x+200*gamepad_axis_value(0,gp_axislh)*3/2,heady+200*gamepad_axis_value(0,gp_axislv)*3/20,10,true);
*/
