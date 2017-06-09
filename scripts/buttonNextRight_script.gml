///buttonNextRight_script(currentButton)
/* this funciton finds and returns the next closest button based on currentButton */
var curButton = argument0;

//find the x value of the current button. this is what we'll be searching by
var curX = curButton.x;
//show_debug_message(curX);

/* the issue is that the in instance_nth_nearest i'm checking myself as well? (maybe) */
/*
//var a = instance_nth_nearest(curButton.x, curButton.y, Button, 0);
var b = instance_nth_nearest(curButton.x, curButton.y, Button, 1);
var c = instance_nth_nearest(curButton.x, curButton.y, Button, 2);
var d = instance_nth_nearest(curButton.x, curButton.y, Button, 3);

//show_debug_message(a.x);
show_debug_message(b.x);
show_debug_message(c.x);
show_debug_message(d.x);
*/

for(var i = 1; i <= instance_number(Button); i++){
    var next = instance_nth_nearest(curButton.x, curButton.y, Button, i);
    if(next.x > curX){
        //show_debug_message(next.x);
        return next;
    }
}

//if the execution reaches this point then that means there are
// no buttons to the right. if that is the case, return the farthest button 'wrap around'

return instance_furthest(curButton.x, curButton.y, Button);
