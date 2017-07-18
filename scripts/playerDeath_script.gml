control.paused=true;
audio_stop_sound(Music);
audio_stop_sound(octopus_sound);
audio_stop_sound(bossMusic1);
audio_stop_sound(fuse);
audio_stop_sound(digeridoo);
audio_stop_sound(vulcanology);
audio_stop_sound(bossMusic2);
image_xscale=0
if(!audio_is_playing(deathMusic)&&!control.mute&&deathTimer>100)audio_play_sound(deathMusic,1,0);

deathTimer-=1;

if(global.musicSelector==2) global.musicSelector=0;

if(deathTimer<=0){
    control.paused=false;
    room_restart();
}
