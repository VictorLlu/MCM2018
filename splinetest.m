
clear all;clc;
ax = [0 1 2 3];
ay = [3 5 4 1];  %对数据点(0,3),(1,5),(2,4),(3,1)进行三次样条建模，并输出表达式和图像
csa = spline(ax,[0 ay 0]);
xxa = linspace(0,3,1000);
plot(ax,ay,'o',xxa,ppval(csa,xxa),'-');
xlabel('a x 0~3');
ylabel('a y');
title('equation a');
pp=interp1(ax,ay,'spline','pp');
breaks=pp.breaks; %breaks的第i和i+1个元素为m和n
coefs=pp.coefs; 
    %假设coefs的第i行为a b c d，
    %breaks的第i和i+1个元素为m和n那么在区间[m,n]的函数表达式就是
    %a(x-m)^3+b(x-m)^2+c(x-m)+d
syms x
disp('对于数据点(0,3),(1,5),(2,4),(3,1)的三次样条表达式为：');
for i = 1:3
    y = coefs(i,1)*((x - breaks(i))^3) + coefs(i,2)*((x - breaks(i))^2) + coefs(i,3)*((x - breaks(i))) + coefs(i,4)
end
