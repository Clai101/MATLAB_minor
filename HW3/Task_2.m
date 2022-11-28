%Зависимости
m_1 = 5; m_2 = 13; m_3 = 30; m_4 = 45;
a = 0.15; beta = 0.01;
n = 100000;
x = linspace(0,12/9, n);
lambda = [1:n; 1:n; 1:n; 1:n].';
y= 200;
time_line = 0:y;
kogort = [0:y; 0:y; 0:y; 0:y; ];
kogort (:, 1) = [20; 20; 20; 20];
% Функция считающая собственные числа
lesli = @(b) [((m_1 - 1) * (1 - a)/ m_1) 0 b 0;
    ((1 - a)/m_1) ((m_2 - 1)/m_2) 0 0;
    0 (1/m_2) ((m_3 - 1)/ m_3) 0;
    0 0 (1/m_3) ((m_4 -1)*(1 -  beta)/m_4)];
%Ищем значения для b
for itr = 1:n
    time =  eig(lesli(x(itr)));
    lambda(itr,:) = real(time);
    %Условие на нужное мне b_0
    if and( lambda(itr,2) < 1 + 10^(-6),   1 - 10^(-6) < lambda(itr,2)) 
        b_0 = x(itr)
    end
end
for itr = 2:y+1
    kogort(:, itr) = lesli(b_0) * kogort(:,itr-1);
end

%вывод результатов
figure(1);
plot(x, lambda);
legend('$\lambda_1$', '$\lambda_2$', '$\lambda_3$', '$\lambda_4$', Interpreter = 'latex', FontSize = 14);
xlabel('$b$', Interpreter = 'latex', FontSize = 14);
ylabel('$\lambda(b)$', Interpreter = 'latex', FontSize = 14);
grid on;
figure(2);
plot(time_line, kogort);
legend('$1-5$', '$6-18$', '$19-48$', '$49-88$', Interpreter = 'latex', FontSize = 14);
xlabel('$Year$', Interpreter = 'latex', FontSize = 14);
ylabel('$Quantity$', Interpreter = 'latex', FontSize = 14);
grid on;
