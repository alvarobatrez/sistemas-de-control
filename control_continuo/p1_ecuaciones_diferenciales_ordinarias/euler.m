function x = euler(fun, t0, h, tf, x0)
x_aux = x0;
x = x_aux;
for t = t0 : h : tf-h
    x_aux = x_aux + h * fun(t, x_aux);
    x = [x x_aux];
end