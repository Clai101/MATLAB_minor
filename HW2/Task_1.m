%% Строим изолинии arg  and  abs
k = 1; m = 15;
[x,y] = meshgrid(linspace( -0.4, 0.4, 3000), linspace(-0.4, 0.4 ,3000));
z = complex(x,y);

% Определяем функцию и облась
Q = @(z)  1./(z.^3 + 15i*z.^2 - z.*k + 1);

%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;


%Выводим графики
contour(x, y, abs(Q(z)),[0, 1, 2, 3, 4, 5, 10], 'ShowText', 'on', Color = 'blue');
hold on;
contour(x, y, angle(Q(z)), [0,  pi /6,  pi /3, pi/2, pi], 'ShowText', 'on', Color = 'red');
hold on;
%Создаем легенду
legend('$\left| \frac{1}{z^3 + imz^2 - kz + 1} \right| $','$Arg \{  \frac{1}{z^3 + imz^2 - kz + 1}\}$', Interpreter = 'latex', FontSize = 10)

%% Доп корень
k = 1; m = 15;
[x,y] = meshgrid(linspace( -0.1, 0.1, 3000), linspace(-14.8, -15 ,3000));
z = complex(x,y);

% Определяем функцию и облась
Q = @(z)  1./(z.^3 + 15i*z.^2 - z.*k + 1);

%Создаем рамку
figure(2);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;

%Выводим графики
contour(x, y, abs(Q(z)), [0, 0.05,  0.1, 0.15, 0.4, 1, 2, 3], 'ShowText', 'on', Color = 'blue');
hold on;
contour(x, y, angle(Q(z)), [0, pi/6, pi/3 ,pi/2, pi], 'ShowText', 'on', Color = 'red');
hold on;
%Создаем легенду
legend('$ \left| \frac{1}{z^3 + imz^2 - kz + 1} \right| $','$Arg \{  \frac{1}{z^3 + imz^2 - kz + 1}\}$', Interpreter = 'latex', FontSize = 10)


%% Анализ
k = 1; m = 15;
[x,y] = meshgrid(linspace( -12, 12, 3000), linspace(-20, 4 ,3000));
z = complex(x,y);

% Определяем функцию и облась
Q = @(z)  1./(z.^3 + 15i*z.^2 - z.*k + 1);

%Создаем рамку
figure(3);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;

%Выводим графики
contour(x, y, real(Q(z)),[0, 1, 2, 3, 4, 5, 10], 'ShowText', 'on', Color = 'blue');
hold on;
contour(x, y, imag(Q(z)), 'ShowText', 'on', Color = 'red');
hold on;
%Создаем легенду
legend('$Re \{  \frac{1}{z^3 + imz^2 - kz + 1}\}$','$Im \{ \frac{1}{z^3 + imz^2 - kz + 1}\}$', Interpreter = 'latex', FontSize = 10)