function pendulocarro_sim(x,th,R)
% Altura y largo del carro
H = 0.5;
L = 1;

% Diámetro del círculo
D = 0.3;

% Posición en X y Y de la barra
pendx = x + R*sin(th);
pendy = H - R*cos(th);

% Horizonte
plot([-10 10], [0 0], 'k'), hold on
hold on

% Carro
rectangle('Position', [-L/2+x 0 L H], 'FaceColor',[0 0 .5], 'EdgeColor','b', 'LineWidth', 1.5)
% Círculo
rectangle('Position', [pendx-D/2 pendy-D/2 D D], 'Curvature', 1, 'FaceColor',[.5 0 0],'EdgeColor','r', 'LineWidth', 1.5);
% Barra
plot([x pendx], [H pendy], 'g', 'LineWidth', 1.5)

axis([-5 5 -4 4]);
axis equal

hold off