clear,clc;
m=239.46;vi=0.2058;p=1035.71;k=0.6;g=9.8;
syms s(t) v(t);
eqn1 = m*diff(s,2) == m*g-p*g*vi-k*diff(s,1);
eqn2 = m*diff(v) == m*g-p*g*vi-k*v;
ds = diff(s);
dv = diff(v);
s = dsolve(eqn1,s(0)==0,ds(0)==0);
s=simplify(s);
vpa(s,6)
v = dsolve(eqn2,v(0)==0);
v=simplify(v);
vpa(v,6)
y = s-90;
tt = solve(y); tt=double(tt)
vv = subs(v,tt); vv=double(vv)