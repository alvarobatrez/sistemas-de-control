close all; clear, clc
s = tf('s');
G = 50/(s^3 + 9*s^2 + 30*s + 40);

rlocus(G)

figure
margin(G)

figure
nyquist(G)