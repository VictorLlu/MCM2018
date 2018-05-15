clc,clear;
x0 = [41 49 61 78 96 104];
n = length(x0);
x1 = cumsum(x0);
a_x0 = diff(x0)';
z = 0.5 * (x1(2:end) + x1(1:end-1))';
B = [-x0(2:end)', -z, ones(n-1,1)];
u = B\a_x0
syms x(t)
x = dsolve(diff(x,2) + u(1) * diff(x) + u(2) *x == u(3),x(0) == x1(1), x(5) == x1(6));
xt = vpa(x,6)
yuce = subs(x,t,0:n-1);
yuce = double(yuce)
x0_hat = [yuce(1),diff(yuce)];
x0_hat = round(x0_hat)
epsilon = x0-x0_hat
delta = abs(epsilon./x0)