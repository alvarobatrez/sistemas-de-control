close all; clear, clc

w = [0 1 2 5 10 20 50 100]';
s = 1i.*w;
G = (s-1) ./ ((s+2).*(s+3))

%% Nyquist

s = tf('s');
G = (s-1) / ((s+2)*(s+3))

Kp = 6.1;
nyquist(Kp*G)