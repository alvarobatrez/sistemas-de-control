close all; clear, clc

G1 = tf(1,[1 1 1]);
G2 = tf(1,[1 0]);
G = tf(1, [1 1 1 0]);

%% Cascada
C1 = pid(1,1,1);
C1 = pidtune(G1, C1, 1)

L1 = feedback(C1*G1, 1);

C2 = pid(1,1,1);
C2 = pidtune(L1*G2, C2, 0.1)

L2 = feedback(C2*L1*G2, 1);

%% Lazo simple
C = pid(1,1,1);
C = pidtune(G, C, 0.1)

L = feedback(C*G, 1);

%% Resultados
step(L2), hold on
step(L)
legend('Cascada', 'Lazo simple')