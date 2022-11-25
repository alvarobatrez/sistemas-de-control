close all; clear, clc

% Parámetros
L = 2;
M = 5;
m = 1;
g = 9.8;
d = 0.01;
b = 0.5;

% Sistema lineal
A = [0 1 0 0
    0 -d/M m*g/M -b/(L*M)
    0 0 0 1
    0 -d/(L*M) g*(M+m)/(L*M) -b*(M+m)/(L*M)];
B = [0; 1/M; 0; 1/(L*M)];

% Estabilidad y controlabilidad
eigenvalores = eig(A)
Cm = ctrb(A,B);
rango = rank(Cm)

% LQR
Q = diag([15 1 30 5]);
R = 0.01;

K = lqr(A,B,Q,R)

% Tiempo
tspan = 0:0.05:15;

% Condiciones iniciales
x0 = [-3 0 pi-0.5 0]';

% Referencia
ref = [1 0 pi 0]';

% Simulación
fun = @(t,x) pendulocarro(x,L,M,m,g,d,b,-K*(x-ref));
[t,x] = ode45(fun,tspan,x0);

for i = 1 : length(t)
    clf('reset')
    pendulocarro_sim(x(i,1),x(i,3),L)

    pause(0.025)
end