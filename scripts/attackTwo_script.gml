if(abs(currentX-leftBound)<=abs(currentX-rightBound)) goLeft=true;
else goLeft=false;

//if boss is closer to the left side
if(goLeft){
    /*if(x>leftBound&&!swoop){
        angle=point_direction(leftBound,initialY,currentX,currentY)*pi/180;
        sineWave=0;
        x-=moveSpeed*cos(angle);
       // m=(currentY-initialY)/(currentX-leftBound);
        y+=moveSpeed*sin(angle);
        if(image_angle>=-30)image_angle-=.4
    }*/
    if(!swoop){
        if(image_angle>=-30)image_angle-=.3
        if(x>leftBound){
            angle=point_direction(leftBound,initialY,currentX,currentY)*pi/180;
            sineWave=0;
            x-=moveSpeed*cos(angle);
            y+=moveSpeed*sin(angle);
        }
    }
    
    if(x<=leftBound&&image_angle<=-30){
       // image_angle=-30;
        swoop=true;
    }
    if(swoop==true){
        //x+=3*moveSpeed;
        parabolicMovement_script(leftBound,initialY,rightBound,initialY);
        if(image_angle<-5)image_angle+=.4;
        if (x>=rightBound)swoop=false;
    }
    else if(!swoop&&x>=rightBound){
        image_angle=0;
        attackTimer=100;
        attack=defaultMovement;
    }
}
else{
   /* if(!goLeft&&!swoop){
        angle=point_direction(currentX,currentY,rightBound,initialY)*pi/180;
        sineWave=0;
        x+=moveSpeed*cos(angle);
        
        y+=moveSpeed*-1*sin(angle);
        
        if(image_angle<=30)image_angle+=.4;
    }*/
    if(!swoop){
        if(image_angle<=30)image_angle+=.3
        if(x<rightBound){
            angle=point_direction(rightBound,initialY,currentX,currentY)*pi/180;
            sineWave=0;
            x-=moveSpeed*cos(angle);
            y+=moveSpeed*sin(angle);
        }
    }
    
    if(x>=rightBound&&image_angle>=30){
        swoop=true;
    }
    if(swoop==true){
        parabolicMovement_script(rightBound,initialY,leftBound,initialY);
        if(image_angle>5)image_angle-=.4;
        if (x<=leftBound)swoop=false;
    }
    else if(!swoop&&x<=leftBound){
        image_angle=0;
        attackTimer=100;
        attack=defaultMovement;
    }
}
