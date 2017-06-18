x += (hSpeed *abs(moveFrac));//* global.delta) * abs(moveFrac);
y += vSpeed;

if(!onGround)vSpeed += grav; //* global.delta;
if (!l && !r && onGround)
    hSpeed -= (fric * sign(hSpeed)) //* global.delta;

if (!l && !r && !onGround && knockbackTimer<=0)
    hSpeed -= (airResistance * sign(hSpeed)) //* global.delta;
        
if (!l && !r && abs(hSpeed) < fric)
    hSpeed = 0;
    

