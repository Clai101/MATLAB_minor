%% Фазовый портрет
eps = -.5;
R = -3.4;
m = 1; k = 15;
l = -sqrt(m/pi); a = -1/6; b = sqrt((m+k)/pi)/4-sqrt(m/pi)/4; c = 0;  d = 0;
r_1 = sqrt(m/pi);
r_2 = sqrt((m+k)/pi);
[x, y] = meshgrid(linspace(-3, 3, 1001));
r = sqrt(x.^2 + y.^2);
phi = linspace(0, 2*pi);

dx = -x.*(l+r).*(3*a*(l+r)+2*b)./(r) - y;
dy = -y.*(l+r).*(3*a*(l+r)+2*b)./(r) + x;

figure(1);
plot(r_1*cos(phi), r_1*sin(phi), '-r', 'LineWidth', 1);
hold on;
plot(r_2*cos(phi), r_2*sin(phi), '-r', 'LineWidth', 1);
hold on;
streamslice(x, y, dx, dy)
hold on;
xlabel('x');
ylabel('y');
axis equal;
axis([-3 3 -3 3]);
legend('$r_1$', '$r_2$', '$Stream$', Interpreter = 'latex', FontSize = 10)


