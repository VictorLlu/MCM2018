clear,clc;
xy=@(x,y) -2 * y + 2 * x^2 + 2*x;
[x,y] = ode45(xy,[0,0.5],1);
sol = ode45(xy,[0,0.5],1);
y2 = deval(sol,x);
plot(x,y);