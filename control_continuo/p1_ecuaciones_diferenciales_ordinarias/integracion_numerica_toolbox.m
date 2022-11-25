close all; clear, clc

tspan = [0 20];

% Integracion numerica
x0 = [0; 0];
fun = @(t,x) [x(2); 1-x(1)-x(2)];

[t,x1] = ode45(fun, tspan, x0);

% Resultado analitico
x = -(exp(-t/2) .* sin(sqrt(3)*t/2))/sqrt(3) - exp(-t/2) .* cos(sqrt(3)*t/2) + 1;

% Resultados
plot(t,x,'k'), hold on, grid on
plot(t,x1,'r')