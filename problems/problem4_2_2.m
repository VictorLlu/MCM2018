clear all;clc;
p=[341948,1092759,5491,49375,1340000,365,2500,78200,867023,14000,23700,70700,304500,138000,2602000];
v=[4.81 5.88 3.31 4.90 5.62 2.76 2.27 3.85 5.21 3.70 3.27 4.31 4.42 4.39 5.05];
a=[1,4.81;1,5.88;1,3.31;1,4.90;1,5.62;1,2.76;1,2.27;1,3.85;1,5.21;1,3.70;1,3.27;1,4.31;1,4.42;1,4.39;1,5.05];
for i=2:14
    a=[a,a(:,2).^i];
end
b=p';
m=a\b;
x=2.27:0.01:5.62;
y=0;
for i=1:15
    y=y+m(i)*x.^(i-1);
end
n=polyfit(v,p,14);
z=0;
for i=1:15
    z=z+n(i)*x.^(i-1);
end
plot(v,p,'o');
hold on;
% plot(x,y,'b');
% hold on;
plot(x,z,'r');