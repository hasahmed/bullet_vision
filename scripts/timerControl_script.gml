if (fallOffEdgeTimer > 0)
    fallOffEdgeTimer -= 1;
    
if (fallOffEdgeTimer == 0){
    fallOffEdgeTimer = -1;
}

if(reloadTimer>0) reloadTimer -=1

if(reloadTimer==0) {
    shotgunShells=2
    reloadTimer =-1
} 

if(shotgunShells==0&&onGround) {
    reloadTimer=40
    shotgunShells-=1
}

if(knockbackTimer>0) knockbackTimer -=1;

if(invincibilityTimer>=0){
    invincibilityTimer -=1;
    
    //this next function causes the flashing
    if(round(invincibilityTimer/3)%2==0){
        image_blend = c_red;
    }
    else image_blend = c_white;
    
    
}
if(invincibilityTimer <0) image_blend = c_white;
