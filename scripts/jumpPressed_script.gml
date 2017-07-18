//allows the player to jump for some frames after falling off the edge
if(!onGround &&fallOffEdgeTimer>0&&numJumpsPerSpacePressed<1){
    numJumpsPerSpacePressed++;
    vSpeed = -10;
    if(!control.mute)audio_play_sound(Jump,2,false);
    blurTimer=5
}
