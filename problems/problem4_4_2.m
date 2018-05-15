clear all;clc;
x=[3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9];
y=[20.08 22.20 24.53 27.12 29.96 33.11 36.60 40.45 44.70 49.40];
xx=linspace(3.0,3.9,1000);
yy=spline(x,y);
plot(x,y,'o',xx,ppval(yy,xx),'-');
xlim([2.9,4.0]);
ylim([18,52]);
pp=interp1(x,y,'spline','pp');
breaks=pp.breaks;
coefs=pp.coefs;
syms x;
for i = 1:9
    y = coefs(i,1)*((x - breaks(i))^3) + coefs(i,2)*((x - breaks(i))^2) + coefs(i,3)*((x - breaks(i))) + coefs(i,4)
end