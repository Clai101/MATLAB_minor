%% Задаем константы и промежутки ОБЯЗАТЕЛЬНО ЗАПУСТИТЬ ЭТОТ СЕКТОР ПЕРЕД ОСТАЛЬНЫМИ
m = 15;
f = [0 , 0 , m , 1; 
    1 , 0 , 0 , 0; 
    0 , 1 , 0 , 0;
    0 , 0 , 1 , 1];
population = [1;0;0;0];

%% Смотрим рост популяции
% Строи ось X
n = 20; % номер месяца
x = linspace(0,n,n);

% Заполняю значания для оси Y
for itr = 1:n
    y(itr) = ave(x(itr), population, f);
end

% Рисую график
figure(1)
plot(x,y)
hold on;
disp(y)

%% Нахожу собственные вектора
[h_1, h_2, h_3] = eig(f);
for itr_1 = 1:4
    for itr_2 = 1:4
        h_3(itr_1,itr_2) = round(h_3(itr_1,itr_2)*100)/100;
    end
end
for itr = 1:4
    h_1(itr) =  round(h_1(itr_1)*100)/100; 
end
disp(sym(h_3));
disp(h_1);



%% Зависимости
% Функция считающая популяцию на n месяц
function value = ave(n, population, f)    
    value = population;
    for itr = 1:n 
       value = f*value;
    end
    value = value(1) + value(2)  + value(3) + value(4);
end