close all; clear, clc

num = 1;
den = [1 -2];
G = tf(num,den);

Kp = 4;
Ki = 1;
Kd = 0;

C = pid(Kp,Ki,Kd);
CG = series(C,G);
L = feedback(CG,1)

pole(L)

step(L)

%% Variables simbólicas
syms s
C = Kp + Ki/s + Kd*s;
G = 1/(s-2);

L = simplify(C*G / (C*G + 1))