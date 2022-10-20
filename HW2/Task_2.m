%% Строим графики
k = 1; m = 15;
x = linspace( -0, 1, 3000);

% Определяем функцию и облась
f = @(x)  x.^2;

%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;

%Выводим графики
fplot(f);
hold on;

%Создаем легенду
legend('$Re \{z^3 + imz^2 - kz + 1\}$','$Im \{z^3 + imz^2 - kz + 1\}$', Interpreter = 'latex', FontSize = 10)