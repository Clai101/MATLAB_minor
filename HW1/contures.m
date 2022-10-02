%% Строим графики
k = 1; m = 15;
[x,y] = meshgrid(linspace( -20, 20, 3000), linspace(20, -20,3000));
z = complex(x,y);

% Определяем функцию и облась
Im = imag(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);
Re = real(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);

%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;

%Выводим графики
contour(x,y,Re, 'ShowText', 'on', Color = 'blue');
hold on;
contour(x,y,Im, 'ShowText', 'on', Color = 'red');
hold on;

%Создаем легенду
legend('$Re \{z^3 + imz^2 - kz + 1\}$','$Im \{z^3 + imz^2 - kz + 1\}$', Interpreter = 'latex', FontSize = 10)

%% Один нижний корень
k = 1; m = 15;
[x,y] = meshgrid(linspace( -2, 0, 3000), linspace(-14, -15,3000));
z = complex(x,y);

% Определяем функцию и облась
Im = imag(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);
Re = real(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);
z_incircle = z( and(abs(imag(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1)) < 0.1 ....
,abs( real(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1) ) < 0.1) );

%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;

%Выводим графики
contour(x,y,Re, 'ShowText', 'on', Color = 'blue');
hold on;
contour(x,y,Im, 'ShowText', 'on', Color = 'red');
hold on;
plot(z_incircle, '*r')
hold on;

%Создаем легенду
legend('$Re \{z^3 + imz^2 - kz + 1\}$','$Im \{z^3 + imz^2 - kz + 1\}$', 'Roots', Interpreter = 'latex', FontSize = 10)
%% Два корня в близи (0,0)
k = 1; m = 15;
[x,y] = meshgrid(linspace( -2, 2, 3000), linspace(2, -2,3000));
z = complex(x,y);

% Определяем функцию и облась
Im = imag(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);
Re = real(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1);
z_incircle = z( and(abs(imag(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1)) < 0.001 ....
,abs( real(z.^3 + z.^2 + z.^2*1i*m - z.*k + 1) ) < 0.1) );

%Создаем рамку
figure(1);
xlabel('$Re(z)$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im(z)$', Interpreter = 'latex', FontSize = 14);
grid on;
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
hold on;

%Выводим графики
contour(x,y,Re, 'ShowText', 'on', Color = 'blue');
hold on;
contour(x,y,Im, 'ShowText', 'on', Color = 'red');
hold on;
plot(z_incircle, '*r')
hold on;

%Создаем легенду
legend('$Re \{z^3 + imz^2 - kz + 1\}$','$Im \{z^3 + imz^2 - kz + 1\}$', 'Roots', Interpreter = 'latex', FontSize = 10)