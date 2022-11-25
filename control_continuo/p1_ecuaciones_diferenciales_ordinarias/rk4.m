function x = rk4(fun, t0, h, tf, x0)
x_aux = x0;
x = x_aux;
for t = t0 : h : tf-h
    f1 = fun(t, x_aux);
    f2 = fun(t + h/2, x_aux + h/2*f1);
    f3 = fun(t + h/2, x_aux + h/2*f2);
    f4 = fun(t + h, x_aux + h*f3);
    x_aux = x_aux + h/6*(f1 + 2*f2 + 2*f3 + f4);
    x = [x x_aux];
end