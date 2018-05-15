clear all;clc;
t=[35.97,67.21,92.96,141.70,483.70,886.70,1783.00,2794.00,3666.00];
c=[0.241,0.615,1.000,1.881,11.860,29.460,84.020,164.800,248.400];
x=t;
y=sqrt(c);
m=polyfit(x,y,1);
a=0:4000;
b=m(1)*a+m(2);
y_pre=m(1)*x+m(2);
c_pre=y_pre.^2;
max(abs(c-c_pre))
plot(x,y,'o');
hold on;
plot(a,b);