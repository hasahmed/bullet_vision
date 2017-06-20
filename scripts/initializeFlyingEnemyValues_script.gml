initialX = x;
initialY = y;
hSpeed = -3.5;
amplitude = 50; // height of the sine wave in pixels

randomize(); //creats a new game maker random seed otherwise all enemy's wave's would
    //be the same
var randomWaveLength = random(30) + 20; // random number between 20 and 50 for use
    // in making the wavelength of every new enemy random
wavelength = randomWaveLength; // distance between highs and lows, somewhat arbitrary units.
knockBack = 15;//stronger knockback than other enemies
valueGenerator=random(100);
healthSpawnChance=10;
hp=2;
isMoving=false;
