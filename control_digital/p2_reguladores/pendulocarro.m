function dxdt = pendulocarro(X,R,M,m,g,d,b,u)
v = X(2);
th = X(3);
w = X(4);

sth = sin(th);
cth = cos(th);

dxdt = [
    v;
    (m*R*w^2*sth + m*g*sth*cth + b/R*w*cth - d*v + u) / (M + m - m*cth^2);
    w;
    -(m*R*w^2*sth*cth + g*(M+m)*sth + b*(M+m)/(m*R)*w - d*v*cth + u*cth) / (R*(M + m - m*cth^2))
];