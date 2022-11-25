close all; clear, clc

w = [0.1 0.5 1 5 10];
s = w.*1i;
G = 1 ./ (s.^2 + 0.5*s + 1)
A = sqrt(real(G).^2 + imag(G).^2)
db = 20*log10(A)
phi = atan2d(imag(G),real(G))