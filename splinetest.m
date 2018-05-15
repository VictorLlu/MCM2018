
clear all;clc;
ax = [0 1 2 3];
ay = [3 5 4 1];  %�����ݵ�(0,3),(1,5),(2,4),(3,1)��������������ģ����������ʽ��ͼ��
csa = spline(ax,[0 ay 0]);
xxa = linspace(0,3,1000);
plot(ax,ay,'o',xxa,ppval(csa,xxa),'-');
xlabel('a x 0~3');
ylabel('a y');
title('equation a');
pp=interp1(ax,ay,'spline','pp');
breaks=pp.breaks; %breaks�ĵ�i��i+1��Ԫ��Ϊm��n
coefs=pp.coefs; 
    %����coefs�ĵ�i��Ϊa b c d��
    %breaks�ĵ�i��i+1��Ԫ��Ϊm��n��ô������[m,n]�ĺ������ʽ����
    %a(x-m)^3+b(x-m)^2+c(x-m)+d
syms x
disp('�������ݵ�(0,3),(1,5),(2,4),(3,1)�������������ʽΪ��');
for i = 1:3
    y = coefs(i,1)*((x - breaks(i))^3) + coefs(i,2)*((x - breaks(i))^2) + coefs(i,3)*((x - breaks(i))) + coefs(i,4)
end
