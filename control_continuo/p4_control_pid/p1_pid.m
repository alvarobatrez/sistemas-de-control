close all; clear, clc

s = tf('s');
G = 1 / (s^2 + 10*s + 20);

%% Control Proporcional
Kp = 300;
CG = series(Kp,G);
L = feedback(CG,1);

step(L), hold on

%% Control Integral (PI)
Kp = 300;
Ki = 500;
% Kp + Ki/s
C = pid(Kp,Ki,0);
CG = series(C,G);
L = feedback(CG,1);

step(L)

%% Control Derivativo (PD)
Kp = 300;
Kd = 20;
% Kp + Kd*s
C = pid(Kp,0,Kd);
CG = series(C,G);
L = feedback(CG,1);

step(L)

legend('P','PI', 'PD')