close all; clear, clc

z = [];
p = [-1 -2 -3];
k = 4;
G = zpk(z,p,k);

OS = 0.05;
Ts = 3;

zeta = -log(OS) / sqrt(pi^2 + log(OS)^2);
wn = 3.9 / (zeta*Ts);

C = zpk([-1.86 -1.3],0,1)

CG = series(C,G);

rlocus(CG)
sgrid(zeta,wn)

s = -1.3-1.36i;

K = 1 / abs((s+1.86)*(s+1.3)/s * 4 /((s+1)*(s+2)*(s+3)))

L = feedback(K*CG,1);
figure, step(L)