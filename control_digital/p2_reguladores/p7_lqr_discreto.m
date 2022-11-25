clear, clc

A = [0.5 0.6; 0.1 -0.5];
B = [0.3; 0.5];
Q = eye(2);
R = 1;

K = dlqr(A,B,Q,R)