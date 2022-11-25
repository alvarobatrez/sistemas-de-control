close all; clear, clc

% Parámetros
R = 2;
M = 5;
m = 1;
g = 9.8;
d = 0.01;
b = 0.5;

% Sistema lineal
A = [0 1 0 0
    0 -d/M m*g/M -b/(R*M)
    0 0 0 1
    0 -d/(R*M) g*(M+m)/(R*M) -b*(M+m)/(R*M)];
B = [0; 1/M; 0; 1/(R*M)];

% Estabilidad y controlabilidad
eigenvalores = eig(A)
Cm = ctrb(A,B);
rango = rank(Cm)

% Polos arbitrarios
p = [-1 -2 -0.5 -1.5];

% Ganancia
K = place(A,B,p)

% Tiempo
tspan = 0:0.05:20;

% Condiciones iniciales
x0 = [-3 0 pi-0.5 0]';

% Referencia
ref = [1 0 pi 0]';

% Simulación
fun = @(t,x) pendulocarro(x,R,M,m,g,d,b,-K*(x-ref));
[t,x] = ode45(fun,tspan,x0);

for i = 1 : length(t)
    clf('reset')
    pendulocarro_sim(x(i,1),x(i,3),R)

    pause(0.025)
end