ini_open(SaveObject.saveFile);
SaveObject.playerX = ini_read_real("player", "x", 0);
SaveObject.playerY = ini_read_real("player", "y", 0);
SaveObject.playerHP = ini_read_real("player", "hp", 4);
SaveObject.savedRoom = ini_read_real("player", "room", levelOne);
ini_close();

SaveObject.gameWasLoaded = true;
audio_stop_all();
room_goto(SaveObject.savedRoom);
//Player.x = playerX;
//Player.y = playerY;
//Player.hp = playerHP;
