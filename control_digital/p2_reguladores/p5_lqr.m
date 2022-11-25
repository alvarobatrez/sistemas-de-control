clear, clc

A = [0 1; 0 0];
B = [0; 1];
Q = [1 0; 0 1];
R = 1;

K = lqr(A,B,Q,R)