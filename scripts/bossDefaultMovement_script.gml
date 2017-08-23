currentX=x;
currentY=y;

if(x<=leftBound){
    moveRight=true;
    aesMoveRight=true
}
if(x>=rightBound){
    moveRight=false;
    aesMoveRight=false
}

if(moveRight==true){
    x+=moveSpeed;
}
if(moveRight==false){
    x-=moveSpeed;
}

sineWave+=1;//counter used to make the boss's movement follow a sine wave


y+=amplitude*sin(sineWave*pi/180);

if(attackTimer>=0) attackTimer-=1;

if(attackTimer==0){
    attack=choose(attack1,attack2);//attack selector
   // attack=attack2;
}
