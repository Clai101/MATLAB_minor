k = 15; m =1;
a = k; b = k + m; alpha = k/2; beta = k / (m + 1);
[x, y] = meshgrid(linspace(0, 10, 1001));
dx = alpha * x - a * y;
dy = - b * x + beta * y;
sy = linspace(0, 20, 40);
sx = linspace(0, 20, 40);
figure(1);
streamline(x, y, dx, dy, sx , sy)
hold on;
axis equal
xlabel('$x$', Interpreter = 'latex', FontSize = 14);
ylabel('$y$', Interpreter = 'latex', FontSize = 14);
hold on;
grid on;
hold off;