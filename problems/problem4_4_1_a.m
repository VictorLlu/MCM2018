clear all;clc;
x=[2 4 7];
y=[2 8 12];
xx=linspace(2,7,1000);
yy=spline(x,[0 y 0]);
plot(x,y,'o',xx,ppval(yy,xx),'-');
xlim([0,8]);
ylim([0,13]);
pp=interp1(x,y,'cubic','pp');
breaks=pp.breaks;
coefs=pp.coefs;
syms x
for i=1:2;
    y = coefs(i,1)*((x - breaks(i))^3) + coefs(i,2)*((x - breaks(i))^2) + coefs(i,3)*((x - breaks(i))) + coefs(i,4)
end