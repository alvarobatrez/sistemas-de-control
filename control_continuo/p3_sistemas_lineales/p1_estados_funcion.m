clear, clc

A = [1 1; 0 1];
B = [0; 1];
C = [1 0];
D = 0;
sys = ss(A,B,C,D)

% Espacio de estados a funcion de transferencia
G = tf(sys)