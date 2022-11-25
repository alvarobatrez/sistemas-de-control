clear, clc

%% Ejemplo 1
s = tf('s');
G = (s + 2) / (s^2 + 4*s + 3);
polos = pole(G)

%% Ejemplo 2
num = [1 1];
den = [1 2 2];
polos = roots(den)