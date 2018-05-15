clc,clear;
x0 = [71.1 72.4 72.4 72.1 71.4 72.0 71.6]';
n = length(x0);
lamda = x0(1:n-1)./x0(2:n);
% range = minmax(lamda')
x1 = cumsum(x0);
B = [-0.5 * (x1(1:n-1) + x1(2:n)),ones(n-1,1)];
Y = x0(2:n);
u = B\Y;
syms x(t);
x = dsolve(diff(x) + u(1) * x == u(2), x(0) == x0(1));
xt = vpa(x,6)
yuce1 = subs(x,t,[0:n-1]);
yuce1 = double(yuce1);
yuce = [x0(1),diff(yuce1)]
epsilon = x0' - yuce
dlta = abs(epsilon./x0')
rho = 1-(1-0.5*u(1))/(1+0.5*u(1))*lamda'