y = initialY + amplitude * sin((initialX - x)/wavelength)
if(abs(x-Player.x)<1000&&abs(y-Player.y)<800)isMoving = true;//This if statement acts as a "spawner" when you get close
if(isMoving) x+=hSpeed;
