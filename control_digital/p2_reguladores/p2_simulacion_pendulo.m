close all; clear, clc

% Parámetros
R = 2;
M = 5;
m = 1;
g = 9.8;
d = 0.01;
b = 0.5;

% Control
u = 0;

% Tiempo
tspan = 0:0.05:10;

% Condiciones iniciales
x0 = [0 0 pi-0.5 0];

% Simulación
fun = @(t,x) pendulocarro(x,R,M,m,g,d,b,u);
[t,x] = ode45(fun,tspan,x0);

for i = 1 : length(t)
    clf('reset')
    pendulocarro_sim(x(i,1),x(i,3),R)

    pause(0.025)
end