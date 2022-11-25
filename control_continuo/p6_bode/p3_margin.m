close all; clear, clc

z = [];
p = [0.1 -1 -2];
k = 50;
G = zpk(z,p,k);

bode(G), grid on, hold on

[Gm, Pm, Wcg, Wcp] = margin(G)

Kp = 0.05;

bode(Kp*G)