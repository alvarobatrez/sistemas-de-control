clear, clc

% Sistema continuo
A = [0 1; 9.8 -0.1];
B = [0; 0];
C = [0 0];
D = 0;
sys = ss(A, B, C, D)

% Eigenvalores
eig(A)

%% Discretizacion
Ts = 0.1;

sysd = c2d(sys, Ts)

% Eigenvalores
eig(sysd.A)