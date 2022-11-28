k = 15; m =1;
eps = [0, -(2*k + m/2)^(-1), (2*k + m/2)^(-1)];
for i = 1:3
    [x, y] = meshgrid(linspace(-10, 10, 1001));
    dx = y - x.*(eps(i)*x.^2 + y.^2 - k - 0.5);
    dy = -x - y.*(eps(i)*x.^2 + y.^2 - k - 0.5);
    
    figure(i);
    streamslice(x, y, dx, dy)
    axis equal;
    hold on;
    xlabel('$x$', Interpreter = 'latex', FontSize = 14);
    ylabel('$y$', Interpreter = 'latex', FontSize = 14);
    hold on;
    grid on;
    hold off;
end