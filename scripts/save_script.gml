ini_open(working_directory +  "saveData.ini");
ini_write_real("player", "x", Player.x);
ini_write_real("player", "y", Player.y);
ini_write_string("player", "hp", Player.hp);
ini_write_string("player", "room", global.currentRoom);
ini_close();
