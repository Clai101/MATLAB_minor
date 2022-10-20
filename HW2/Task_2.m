%Константы
k = 15; m = 1;
p = linspace( -2,2, 100);
% Зависимости
transformed = @(x) imag(w(f(x)));
f = @(x) complex(x, x.*k*(-1)^m);
w = @(z) 1/2 * (z + 1/z);

%Окно и настройки
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;
axis([-2 2 -100 100])
hold on;

%Графики
plot(p, imag(f(p)),  'Linewidth',1, Color="red")
hold on;
fplot(transformed, [-2, -0.0001], 'Linewidth',1, Color="blue")
hold on;
fplot(transformed, [0.0001, 2 ],  'Linewidth',1, Color="blue")
hold on;

%Легенда
legend('$xk(-1)^m$','$ Transforme $', Interpreter = 'latex', FontSize = 10)
hold off;