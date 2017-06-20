if (SaveObject.gameWasLoaded){
    with Warp instance_destroy(); //prevent player from going back to warp
    Player.x = SaveObject.playerX;
    Player.y = SaveObject.playerY;
    Player.hp = SaveObject.playerHP;
    SaveObject.gameWasLoaded = false;
}

