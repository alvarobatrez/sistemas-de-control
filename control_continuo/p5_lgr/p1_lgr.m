close all; clear, clc

z = [-5 -4];
p = [-1 5];
k = 1;

G = zpk(z,p,k)

rlocus(G)