clear all;clc;
t=0:16;
p=[3929 5308 7240 9638 12866 17069 23192 31443 38558 50156 62948 75995 91792 105711 122755 131669 150697];
m=[];
for i=1:17
    m=[m,188000];
end
lnp=log((p./(m-p)));
coefs=polyfit(t,lnp,1);
x=0:16;
y=coefs(1)*x+coefs(2);
%plot(t,lnp,'o',x,y);
tpr=0:0.001:20;
ppr=188000./(1+48.33*exp(-0.3205*tpr));
plot(t,p,'+',tpr,ppr);
