close all; clear, clc

% Parámetros
m = 0.111;
R = 0.015;
g = -9.8;
L = 1.0;
d = 0.03;
J = 9.99e-6;

% Función de transferencia
s = tf('s');
G = - m * g * d / (L * s^2 * (J/R^2 + m));

Tu = 13.7;
Ku = 1;

% Reglas Ziegler-Nichols
Kp = 0.6*Ku
Ki = 2 * Kp / Tu
Kd = Kp * Tu / 8

C = pid(Kp,Ki,Kd);
CG = C*G;
L = feedback(CG,1);

% Resultados
step(L)