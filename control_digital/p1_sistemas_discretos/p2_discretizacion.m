clear, clc

A = [0 1; -80 -18];
B = [0; 1];
C = [2 0];
D = 0;

sys = ss(A,B,C,D)

Ts = 0.01;

sysd = c2d(sys, Ts)

Gz = tf(sysd)