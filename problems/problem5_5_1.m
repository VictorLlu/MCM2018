clear all;clc;
format long g
x=[0.009 0.038 0.073 0.124 0.214 0.375 0.575 0.747 0.872 0.943 0.980 0.997 1.000];
y=[20 30 40 50 60 70 80 90 100 110 120 130 140];
xx=linspace(0.009,1.0000,1000);
yy=interp1(x,y,xx,'linear');
plot(x,y,'o',xx,yy,'-');