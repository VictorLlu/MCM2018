clear all;clc;
syms x;
f=2*x^2+3*x-4;
s=solve(f)
digits(4);
vpa(s,6)
pretty(f)