close all; clear, clc

z = [];
p = [-1 -2 -3];
k = 4;
G = zpk(z,p,k);

OS = 0.05;
Ts = 3;

zeta = -log(OS) / sqrt(pi^2 + log(OS)^2);
wn = 3.9 / (zeta*Ts);

p1 = -zeta*wn + 1i*wn*sqrt(1-zeta^2);
p2 = -zeta*wn - 1i*wn*sqrt(1-zeta^2);

rlocus(G), hold on
sgrid(zeta,wn)

C = zpk(-1.3,-1.9,1);
CG = series(C,G);

figure
rlocus(CG), hold on
sgrid(zeta,wn)

Kp = 1 / abs(4*(p1+1.3) / ((p1+1.9)*(p1+1)*(p1+2)*(p1+3)));

L = feedback(Kp*CG,1);
figure, step(L)