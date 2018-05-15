clear all;clc;
syms x(t) r xm t0 x0;
eqn = diff(x,t) == r*(1-x/xm)*x;
f=dsolve(eqn,'x(t0)=x0')