close all; clear, clc

z = [3 2];
p = [-3 -1];
k = 1;

GH = zpk(z,p,k);
rlocus(GH)

Kp = 1/5;
C = pid(Kp,0,0);
CGH = series(C,GH);
L = feedback(CGH,1);
figure, impulse(L), grid on, hold on

Kp = 2/5;
C = pid(Kp,0,0);
CGH = series(C,GH);
L = feedback(CGH,1);
impulse(L)

Kp = 3/5;
C = pid(Kp,0,0);
CGH = series(C,GH);
L = feedback(CGH,1);
impulse(L)

Kp = 4/5;
C = pid(Kp,0,0);
CGH = series(C,GH);
L = feedback(CGH,1);
impulse(L)

Kp = 5/5;
C = pid(Kp,0,0);
CGH = series(C,GH);
L = feedback(CGH,1);
impulse(L)

legend('Kp=1/5','Kp=2/5','Kp=3/5','Kp=4/5','Kp=5/5')
axis([0 10 -4 4])