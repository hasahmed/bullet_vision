///buttonNextLeft_script(currentButton)
/* this funciton finds and returns the next closest button based on currentButton */
var curButton = argument0;

//find the x value of the current button. this is what we'll be searching by
var curX = curButton.x;

//check to see if there are ANY buttons to the left. if so return it
for(var i = 1; i <= instance_number(Button); i++){
    var next = instance_nth_nearest(curButton.x, curButton.y, Button, i);
    //return the nearest button to the left
    if(next.x < curX){
        return next;
    }
}

//if the execution reaches this point then that means there are
// no buttons to the left. if that is the case, return the farthest button 'wrap around'
return instance_furthest(curButton.x, curButton.y, Button);
