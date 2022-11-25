clear, clc

s = tf('s');
z = [3 4];
p = [-1 -2];
k = 7;
G = zpk(z,p,k)