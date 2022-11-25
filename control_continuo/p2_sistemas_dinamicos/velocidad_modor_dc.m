close all; clear, clc

% Parametros
J = 3.4e-5;
b = 2.2e-5;
K = 50e-3;
L = 7.7e-3;
R = 11.4;

%% Ecuaciones Diferenciales
tspan = [0 1.5];
x0 = [0 0];

v = 1;

fun = @(t,x) motor(x,J,b,K,L,R,v);
[t,x] = ode45(fun,tspan,x0);

plot(t,x(:,1))
xlabel('seconds'), ylabel('rad/s')

%% Espacio de Estados
A = [-b/J K/J; -K/L -R/L];
B = [0; 1/L];
C = [1 0];
D = 0;

sys = ss(A,B,C,D);

figure
step(sys)

%% Funcion de Transferencia
s = tf('s');

G = K / ((L*s+R)*(J*s+b) + K^2);

figure
step(G)


%% Funcion
function dx = motor(x,J,b,K,L,R,v)
dx1 = -b/J*x(1) + K/J*x(2);
dx2 = -K/L*x(1) - R/L*x(2) + v/L;
dx = [dx1; dx2];
end