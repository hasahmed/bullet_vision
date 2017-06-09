ini_open(working_directory +  "saveData.ini");
ini_write_real("player", "x", floor(Player.x));
ini_write_real("player", "y", floor(Player.y));
ini_write_real("player", "hp", Player.hp);
ini_close();
