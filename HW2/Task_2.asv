%% Строим графики
k = 1; m = 15;
[x,y] = meshgrid(linspace( -0.0001,1, 30), linspace(0,1 ,30));
z = complex(x, y);

% Определяем функцию и облась
f = @(x)  x.^2;
Q = @(z) z;

%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;

%Выводим графики
fplot(f, [0, 1], 'Linewidth',2);
hold on;
contour(x, y, real(Q(z)), [0,0], 'Linewidth',2,  Color = 'red');
hold on;
contour(x, y, imag(Q(z)), [1,1], 'Linewidth',2,   Color = 'red');
hold on;


%Создаем легенду
legend('$Re \{z^3 + imz^2 - kz + 1\}$','$Im \{z^3 + imz^2 - kz + 1\}$', Interpreter = 'latex', FontSize = 10)