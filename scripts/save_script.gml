ini_open(SaveObject.saveFile);
ini_write_real("player", "x", Player.x);
ini_write_real("player", "y", Player.y);
ini_write_real("player", "hp", Player.hp);
ini_write_real("player", "room", global.currentRoom);
ini_close();
