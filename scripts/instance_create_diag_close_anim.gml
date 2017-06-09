/* This script is used to create the dialog closing animation, and is called from
inside of TextBoxTrigger object, and possibly others I forgot. */

/* close_anim: in the DialogOenAnim creation code, the x and y values
are set so that the object is drawn in the middle of the screen,
hence it doesn't need to be worried about here */
var close_anim = instance_create(0, 0, DialogOpenAnim);

close_anim.image_index = 13; //sets to last image in sprite
close_anim.image_speed *= -1 // play backwards
