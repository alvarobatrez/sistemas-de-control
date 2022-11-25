clear, clc

%% No controlable
A = [1 0; 0 2];
B = [0; 1];

% Cm = [B A*B]
Cm = ctrb(A, B)
r = rank(Cm)

%% Controlable
A = [1 1; 0 2];
B = [0; 1];

% Cm = [B A*B]
Cm = ctrb(A, B)
r = rank(Cm)