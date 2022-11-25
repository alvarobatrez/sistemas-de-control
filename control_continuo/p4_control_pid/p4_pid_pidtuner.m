close all; clc

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

% C = pidtune(G,'PID')

CG = C*G;
L = feedback(CG,1);

% Resultados
step(L)