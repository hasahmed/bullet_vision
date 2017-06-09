///pauseMenuSetup_script()
/* pausMen_script takes no arguments, all of the buttons of the
start menu */
var screenCenterX = view_wview[0]/2;
var screenCenterY = view_hview[0]/2;

/*
show_debug_message('screenCenterX: ' + string(screenCenterX));
show_debug_message('screenCenterY: ' + string(screenCenterY));

show_debug_message('player.x: ' + string(Player.x));
show_debug_message('Player.y: ' + string(Player.y));
*/


//menuButton
var menuButton = instance_create(/*screenCenterX, screenCenterY, */ Player.x, Player.y, MenuButton);

//quitButton
var quitButton = instance_create(/*screenCenterX, menuButton.y + 50,*/ Player.x, Player.y + 100, QuitButton);


//saveAndQuitButton
var saveAndQuitButton = instance_create(Player.x, Player.y + 200, SaveAndQuitButton);

instance_create(mouse_x, mouse_y, Cursor);



