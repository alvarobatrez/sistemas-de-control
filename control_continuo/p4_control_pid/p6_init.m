close all; clear, clc

% Parámetros
J = 0.01;
b = 0.1;
k = 0.01;
R = 1;
L = 0.5;

% Ganancias
Kp = 3;
Ki = 15;
Kd = 0.3;

% Resistencias y capacitores
r = 1e3;
c = 1e-6;

rp = Kp*r
ri = 1/(Ki*c)
rd = Kd/c