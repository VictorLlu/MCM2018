clc,clear
L=32000;N=100;
a=1.4*10^-3;b=0.74;g=981;
u_s=70;
u_n=u_s/0.4*log(1950/0.684/u_s+4.28*10^-5*u_s^2-0.0443);
km=3.63;p=5-log10(u_s);
h=[];
H=[];
for t=1:10
    for n=1:N
        h(n)=0;
    end
    for n=1:N
        for j=1:N/2
            K=2*pi*j/L;
            if K<0.04
                w=a/(K^3)*exp(-b*g^2/((K^2)*u_n^4));
            else
                w=0.875*(2*pi)^(p-1)*(1+3*K^2/km^2)*g^((1-p)/2)*(K*(1+K^2/km^2))^(-(p+1)/2);
            end
            if j>0
                F=2*pi/sqrt(2*2*pi/L).*sqrt(w)*(normrnd(0,1,1)+normrnd(0,1,1)*1i);
                h(n)=h(n)+2*1/L*real(F*exp(1i*K*n*L/N));
%             h(n)=h(n)+1/L*F*exp(1i*K*n*L/N)+1/L*conj(F)*exp(1i*(-K)*n*L/N);
%         elseif j==0
%             F=2*pi/sqrt(2*2*pi/L).*sqrt(w)*(normrnd(0,1,1));
%             h(n)=h(n)+1/L*F*exp(1i*K*n*L/N);
            end
        end
    end
    H=[H;h];
end
save wave H*