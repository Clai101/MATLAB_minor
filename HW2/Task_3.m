%% Строим графики
k = 1; m = 15;
x =linspace( -0.0001,1, 300000);
P = @(z)  z^3 + (1i*m)*z^2 - k* z +1;

% Определяем функцию и облась
f = @(x)  x.^2;
Q = @(x) x;

sum_1 = complex(0,0);
sum_2 = complex(0,0);
for itr = 2:length(x)
    sum_1 = sum_1 + ((x(itr) +1i*x(itr)^2)- (x(itr-1) +1i*x(itr-1)^2)) * P((x(itr-1) +1i*x(itr-1)^2));
end

for itr = 2:length(x)
    sum_2 = sum_2 + ((x(itr) +1i*x(itr))- (x(itr-1) +1i*x(itr-1))) * (P( x(itr-1) +1i*x(itr-1)) +P(x(itr) +1i*x(itr)))/2;
end

disp(sum_2)
disp(sum_1)
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
fplot(Q,[0,1], 'Linewidth',2,  Color = 'red');
hold on;

%Создаем легенду
legend('$ \gamma $','$ x+ix $', Interpreter = 'latex', FontSize = 10)