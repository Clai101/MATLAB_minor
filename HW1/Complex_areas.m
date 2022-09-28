%% Задаем константы и промежутки ОБЯЗАТЕЛЬНО ЗАПУСТИТЬ ЭТОТ СЕКТОР ПЕРЕД ОСТАЛЬНЫМИ
k = 1; m = 15;
[x,y] = meshgrid(linspace(-20, 20, 2000), linspace(-20, 20, 2000));
z = complex(x,y);

%% Функция |z+ik|>m
% Определяем функцию и област
f_1 = abs(complex(x,y+k));
z_incircle =  z(abs(z+1i*k)>m);

%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
hold on;

%Рисуем
plot(z_incircle, '.g')
hold on;
contour(x,y,f_1,[m,0],LineWidth = 1.5,  Color = 'blue');
hold off;

%Создаем легенду
legend('$|z + ik| > m $', '$|z + ik| = m$', Interpreter = 'latex', FontSize = 10)

%% Функция |z-im| < k
% Определяем функцию и област
f_2 = abs(complex(x,y-m));
z_incircle =  z(abs(z-1i*m) < k);

% Создаем рамку
figure(2);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
hold on;

% Рисуем
plot(z_incircle, '.g')
hold on;
contour(x,y,f_2,[k,0],LineWidth = 1.5,  Color = 'red');
hold off;

%Создаем легенду
legend('$|z - im| < k$', '$|z - im| = k$', Interpreter = 'latex', FontSize = 10)

%% Итог
% Задаем функции
f_1 = abs(complex(x,y+k));
f_2 = abs(complex(x,y-m));

% Создание осей
figure(3);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
hold on;

% Логически надодим пересечение областей
ind_incircle =  and(abs(z-1i*m) < k, abs(z+1i*k)>m);
z_incircle = z(ind_incircle);

% Выделяем оболасти
plot(z_incircle, '.g')
hold on;

% Рисуем контура
contour(x,y,f_1,[m,0],LineWidth = 1.5,  Color = 'blue');
hold on;
contour(x,y,f_2,[k,0],LineWidth = 1.5,  Color = 'red');
hold off;

%Создаем легенду
legend('$|z + ik| > m \ \land \ |z - im| < k$', '$|z + ik| = m$', '$|z - im| = k$', Interpreter = 'latex', FontSize = 10)
