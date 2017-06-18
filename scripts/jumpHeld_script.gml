
if (onGround && numJumpsPerSpacePressed < 1)
{
   numJumpsPerSpacePressed++;
   if(!audio_is_playing(Jump)&&!global.mute){
       audio_play_sound(Jump,2,false)
       audio_sound_pitch(Jump, random_range(.9, 1.1));
   }
   
   vSpeed = -jumpPower;
   fallOffEdgeTimer = -1;
}
