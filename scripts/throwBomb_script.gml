if(throwTimer>=0) throwTimer -=1;
if(throwTimer==-1){
    bomb=instance_create(x,y,Bomb);
    bomb.hSpeed=argument0*sign(Player.x-x);
    bomb.vSpeed=-argument1;
    throwTimer=200;
};
