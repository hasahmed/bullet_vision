///don't use this for now. headRecoilShotgun_script(real: time)
//maybe use later: make it so that the rooting the shotun puts the players
//head in a predefined location, so that it doesn't seem strange that the players head
// is 'knocked' into just regular position

var time = argument0;

Head.alarm[0] = time; //start timer

if(Player.playerDir == Player.facing.right) {
    Head.headShake = 80;
}

else if(Player.playerDir == Player.facing.left) {
    Head.headShake = 120;
}
