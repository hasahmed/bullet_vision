x1=argument0;//bombThrower
y1=argument1;
x2=argument2;//player
y2=argument3;

if(x1>x2)x-=4*moveSpeed;
else x+=4*moveSpeed;

t=x-x1;

m=(y2-y1)/(x2-x1);
y = (y1+(-1/1000)*(x-x1)*(x-x2)+m*t);
