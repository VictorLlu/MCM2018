clear all;clc;
x=[20 25 30 35 40 45 50 55 60 65 70 75 80];
y=[42 56 73.5 91.5 116 142.5 173  209.5 248 292.5 343 401 464];
cs=spline(x,[y]);
xx=linspace(20,80,1000);
plot(x,y,'o',xx,ppval(cs,xx),'-');
title('vehicle');
xlabel('v(mph)');
ylabel('d(ft)');
pp=interp1(x,y,'spline','pp');
breaks=pp.breaks;
coefs=pp.coefs;
syms x;
for i = 1:12
    y = coefs(i,1)*((x - breaks(i))^3) + coefs(i,2)*((x - breaks(i))^2) + coefs(i,3)*((x - breaks(i))) + coefs(i,4)
end