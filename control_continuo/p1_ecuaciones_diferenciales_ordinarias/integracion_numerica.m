close all; clear, clc

t0 = 0;
tf = 20;
h = 0.2;
t = t0:h:tf;

% Resultado analitico
x = -(exp(-t/2) .* sin(sqrt(3)*t/2))/sqrt(3) - exp(-t/2) .* cos(sqrt(3)*t/2) + 1;

% Integracion numerica
x0 = [0; 0];
fun = @(t,x) [x(2); 1-x(1)-x(2)];

x1 = euler(fun, t0, h, tf, x0);
x2 = midpoint(fun, t0, h, tf, x0);
x3 = trap(fun, t0, h, tf, x0);
x4 = rk4(fun, t0, h, tf, x0);

% Resultados
plot(t,x,'k'), hold on, grid on
plot(t,x1,'r')
plot(t,x2,'g')
plot(t,x3,'b')
plot(t,x4,'y')