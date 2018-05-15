clc,clear
syms x y
syms z positive
format long g
d = [17675.33388 21839.81626 19851.29886; 18606.75463 22807.17185 20756.90878;...
    19575.37056 23807.47844 21700.16008; 20580.73101 24840.82393 22680.74614;...
    21622.49583 25907.33669 23698.43062; 22700.42386 27007.18253 24753.04392;...
    23814.36220 28140.56181 25844.47924; 24964.23654 29307.70672 26972.68827;...
    26150.04242 30508.87882 28137.67706; 27371.83745 31744.36674 29339.50183];
a = [9.5:0.05:9.95]';
n=size(a);sol=[];
for i=1:10
    eq1 = x^2 + y^2 + z^2 - d(i,1)^2;
    eq2 = x^2 + (y-4500)^2 + z^2 - d(i,2)^2;
    eq3 = (x+2000)^2 + (y-1500)^2 + z^2 - d(i,3)^2;
    [xx,yy,zz] = solve(eq1,eq2,eq3);
    sol = [sol;double([xx,yy,zz])]
end
sol
pp1 = csape(a(:,1),sol(:,1));
coef1 = pp1.coefs(end,:)
pp2 = csape(a(:,1),sol(:,2));
coef2 = pp2.coefs(end,:)
pp3 = csape(a(:,1),sol(:,2));
coef3 = pp3.coefs(end,:)