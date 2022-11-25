close all; clear, clc

m = 1;
b = 1.5;
k = 3;

u = 1;

% Ganancia
K = 1/k

% Factor de amortiguamiento
z = b/(2*sqrt(k/m))

% Frecuencia natural
wn = sqrt(k/m)

% Polos
p1 = -z*wn + 1i*wn*sqrt(1-z^2)
p2 = -z*wn - 1i*wn*sqrt(1-z^2)

% Sobreimpulso
OS = exp(-z*pi/(sqrt(1-z^2)))

% Tiempo asentamiento (tolerancia: 2%)
Ts = 3.9/(z*wn)

%% Función de transferencia
num = u;
den = [m b k];
G = tf(num,den)

step(G)