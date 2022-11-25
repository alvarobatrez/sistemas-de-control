clear, clc

% Funcion de transferencia
num = [1 3];
den = [1 3 2];
G = tf(num, den)

% Funcion de transferencia
s = tf('s');
H = (s + 3) / (s^2 + 3*s + 2)

% Funcion de transferencia a espacio de estados
sys = ss(G)