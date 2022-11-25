close all; clear, clc

p1 = -0.1;
p2 = -0.2;
z1 = 0.3;
z2 = 0.4;
z3 = 0.5;

subplot(1,2,1)
plot(p1,0,'xr'), hold on, grid on
plot(p2,0,'xr')
plot(z1,0,'ob')
plot(z2,0,'ob')
plot(z3,0,'ob')
title('Plano S')
axis([-1 1 -1 1])

subplot(1,2,2)
plot(0,0,'*k'), hold on, grid on
title('Plano W')
axis([-4 3 -1.5 1.5])

for a = 0:0.01:2*pi
    sr = cos(a);
    si = sin(a);
    subplot(1,2,1)
    plot(sr,si,'.k')

    s = sr + 1i*si;
    G = ((s+(-z1)).*(s+(-z2)).*(s+(-z3))) ./ ((s+(-p1)).*(s+(-p2)));
    wr = real(G);
    wi = imag(G);
    subplot(1,2,2)
    plot(wr,wi,'.g')

    pause(0.01)
end