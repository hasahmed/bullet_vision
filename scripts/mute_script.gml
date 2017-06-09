if(global.mute==true)
global.mute=false;
else if (global.mute==false){
    global.mute=true;
    audio_stop_all();
};
