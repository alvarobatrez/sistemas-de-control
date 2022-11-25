function x = trap(fun, t0, h, tf, x0)
x_aux = x0;
x = x_aux;
for t = t0 : h : tf-h
    f1 = fun(t, x_aux);
    f2 = fun(t + h, x_aux + h*f1);
    x_aux = x_aux + h/2*(f1 + f2);
    x = [x x_aux];
end