clear, clc

A = [-1 0; 0 -1];
B = [1; 1];
C = [0 0];
D = 0;
sys = ss(A,B,C,D);

%% Gramiano de controlabilidad (estables)
Wc = gram(sys,'c');
[xi, lambda] = eig(Wc);
abs(xi * diag(lambda))

%% Aproximación discreta (inestables)
sysd = c2d(sys,0.001);
Cm = ctrb(sysd.A, sysd.B);

% Eigendescomposición
Wc = Cm * Cm';
[xi, lambda] = eig(Wc);
abs(xi * diag(lambda))

% SVD
[U,S,V] = svd(Cm, "econ");
abs(U * diag(S))