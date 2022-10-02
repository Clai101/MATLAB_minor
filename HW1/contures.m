% Задаем константы и промежутки 
k = 1; m = 15;
[x,y] = meshgrid(linspace(-30,30, 1000), linspace(-30, 30, 1000));
z = complex(x,y);

% Определяем функцию и облась
Im = imag(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);
Re = real(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);


%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im($', Interpreter = 'latex', FontSize = 14);
grid on;
hold on;

%Выводим графики
contour(x,y,Re, 'ShowText', 'on', Color = 'blue');
hold on;
contour(x,y,Im, 'ShowText', 'on', Color = 'red');
hold on;

%Создаем легенду
legend('$Re \{z^3 + imz^2 - kz + 1\}$','$Im \{z^3 + imz^2 - kz + 1\}$', Interpreter = 'latex', FontSize = 10)