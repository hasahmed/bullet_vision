enemy=argument0;
enemy.hp -=1;
enemy.getHitTimer = 8
if(!global.mute)audio_play_sound(enemyHit,5,false);
