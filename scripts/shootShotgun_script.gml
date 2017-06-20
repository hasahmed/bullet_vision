Crosshair.controllerPriority = false;
var heady = y + 8 - (sprite_height/2); // roughly the position of the sprites head
//p: the point_direction using players head and the mouse


var p = point_direction(x, heady, mouse_x, mouse_y);
univ_shootShotgun_script(p, false);
