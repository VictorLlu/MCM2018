clear all;clc;
% x=0:0.001:4;
% y=(2+2.*x-x.^2).*(x>0 & x<=3/2)+(-x+17/4).*(x>3/2 & x<=4);
% plot(x,y);
f=@(x) (2+2.*x-x.^2).*(x>0 & x<=3/2)+(-x+17/4).*(x>3/2 & x<=4);
fplot(f,[0.000001,4]);
feval(f,1)