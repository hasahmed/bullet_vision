airResistance=.65;
noFire=false;
vSpeed = 0;
hSpeed = 0;
grav = .45;
fric = 1.1;
onGround = false;
inAirJumps = 0;
maxInAirJumps = 0;
jumpPower = 11;
speedUp = 2.5; //acceleration
maxSpeed = 7.5;
l = false;
r = false;
extraJumpBuffer = 3; //number of pixels above ground you can jump
airSpeedUp = speedUp / 2;
fallOffEdgeTimer = -1;
fallOffEdgeTimerMax = 10;//number of frames after sliding off edge you can jump for
knockBack = 12;
noButtons=false;
reloadTimer=-1;
shotgunShells=2;
knockbackTimer=-1;
sprintSpeed=15;
numJumpsPerSpacePressed = 0 //use to make sure that holding space doesn't make player bounce
animSpeed = 0.17; // the speed at which animations player per-tic -hya
image_index = 0; // image_index 0, which is regular granny -hya
image_speed = animSpeed;
hp=4;
invincibilityTimer =-1;
maxHp=100;
moveFrac = 1; // This variable divides the speed of the players movement
    // by the amount that the analog stick is pressed. It is changed in 
    // all a number of the pad movement scripts, and in the movePlayer_script -hya

shotgunFireable = true; //shotgunFireable set to true after reload sound finishes playing in alarm[2]
    // set to false when shotgun initially fired
downReleased_bool = false; // makes sure padDownReleased_script isn't called unless
    // left stick has just left the down postion

dirChanged = false;
downCalledOnce = false; // same deal as callDownReleased

enum facing{
    right = 1, left = -1
} // enumeration of the directions that the player can be.
playerDir = facing.right; // playerDirection, used to dictate which sprite is shown
controllerPriority = false; // weather the controller has priority or not. set to true in every controller
                            // script, and false in every mouse/ keyboard script
//heady = y + 8 - (sprite_height/2); // the rough location of the sprites head

enum running {
    right = 1,
    left = -1,
    still = 0
}
runningDir = running.still;
devFunctions=false;

deathTimer=155;

octopusOnHead=true;//enables an octopus to stick to your head

movingPlatformCollision=false;

myDirection=0;

blurTimer=-1;
bulletFireable=true;
