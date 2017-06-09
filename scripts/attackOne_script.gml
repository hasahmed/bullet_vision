if(bombTimer==0&&abs(x-Player.x<800)){
    universalBombMovement_script(distance,true);
    bombTimer=3;
}
if(bombTimer>0)bombTimer-=1;
if(freezeTimer>0)freezeTimer-=1;
if(freezeTimer==0){
attackTimer=200;
attack=defaultMovement;//attack is done; go back to default movement
freezeTimer=60;
}
