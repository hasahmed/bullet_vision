///headRecoil_script(real: min, real: max, real: time)

var minn = argument0;
var maxx = argument1;
var time = argument2;

Head.alarm[0] = time; //start timer

if(Player.playerDir == Player.facing.right) {
    Head.headShake = random_range(minn, maxx);
}

else if(Player.playerDir == Player.facing.left) {
    Head.headShake = random_range(minn, maxx) * -1;
}
