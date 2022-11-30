k = 15; m = 1;
a = k; b = k + m; alpha = k/2; beta = k / (m + 1);
[x, y] = meshgrid(linspace(0, 50, 1001));
dx = alpha * x - a * y;
dy = - b * x + beta * y;
sx = linspace(0, 50, 90);
sy = sx.*(4/sqrt(15))-0.001;
figure(1);
fplot(@(x) x*4/sqrt(15),  'Linewidth',2, Color="red")
hold on;
streamline(x, y, dx, dy, sx , sy)
hold on;
axis equal;
xlabel('$x$', Interpreter = 'latex', FontSize = 14);
ylabel('$y$', Interpreter = 'latex', FontSize = 14);
axis equal;
legend('Взаимное истребление', 'Сметь армии y', FontSize = 10);
axis([0 4 0 4]);
hold on;
grid on;
hold off;