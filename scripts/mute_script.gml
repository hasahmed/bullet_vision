if(control.mute==true)
control.mute=false;
else if (control.mute==false){
    control.mute=true;
    audio_stop_all();
};
