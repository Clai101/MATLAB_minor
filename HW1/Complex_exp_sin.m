%% exp function
%Инициализируем Переменные
k = 1;
m = 15;
x = linspace(-5, 5, 1000);

%Задаем функции (выстреем отображение)
Re = real(exp(x.*(k+m*1i)));
Im = imag(exp(x.*(k+m*1i)));

%Отображение вспомагательных функций
As = exp(x.*k);
As_negative = -exp(x.*k);

%Создаем окно, сетку, называем оси 
figure(1);
xlabel('x', Interpreter = 'latex', FontSize = 14); 
ylabel('y', Interpreter = 'latex', FontSize = 14);
hold on;
grid on;

%Строим графики
plot(x, Re);
hold on;
plot(x,As);
hold on;
plot(x, Im);
hold on;
plot(x,As_negative);
hold off;

%Создаем легенду
legend('$Re \{exp(x(k+im)) \}$','$exp(kx)$','$Im \{exp(x(k+im))\}$','$-exp(kx)$', Interpreter = 'latex', FontSize = 10)

%% cos function
%Инициализируем Переменные
k = 1; m = 15;
x = linspace(-pi/2-0.05, pi/2+0.05, 1000);


%Задаем функции (выстреем отображение)
Re_cos = real(cos(x.*(k+m*1i)));
Cosh = cosh(x.*m);
Im_cos = imag(cos(x.*(k+m*1i)));
Sinh = -sinh(x.*m);

%Снова создаем окно, сетку, называем оси 
figure(2);
xlabel('x', Interpreter = 'latex', FontSize = 14); 
ylabel('y', Interpreter = 'latex', FontSize = 14);
hold on;
grid on;

%Строим графики
plot(x, Im_cos);
hold on;
plot(x, Re_cos);
hold on;

%Создаем легенду
legend('$Im \{cos(x(k+im)) \}$','$Re \{cos(x(k+im))\}$', Interpreter = 'latex', FontSize = 10)




