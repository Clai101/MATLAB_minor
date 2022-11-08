%% Строим графики
k = 1; m = 15;
A = m; B = 1; b =2*m; a = 2/k;
P = @(r, phi) A/(r*exp(1i*phi) - a) + B/(r*exp(1i*phi) - b) + 1/(r*exp(1i*phi)); 
r = [0.1, 1, 10];
summ = [0, 0, 0];
re = [2i * pi , 2i * pi, 2i*pi*(1 + A)];
n  = linspace( 2,49, 49);
for k = 1:49
    sum = [complex(0,0), complex(0,0), complex(0,0)];
    phi =linspace( 0,2*pi, n(k));
    for i = [1,2,3]
        for itr = 2:length(phi)
            sum(i) = sum(i) + 1i* (r(i)*(phi(itr ) - phi(itr - 1))) *exp(1i*phi(itr)) * P(r(i), phi(itr)) ;
        end
    summ(i,k) =  abs(sum(i) - re(i));
    end
end
figure(1)
plot( n,  summ(1, :)); hold on;
plot( n,  summ(2, :)); hold on;
plot( n,  summ(3, :)); hold on;
legend('$r = 0.1$', '$r = 1$', '$r = 10$', '$Res$', Interpreter = 'latex', FontSize = 14);
xlabel('$Quantity \ of \ iter$', Interpreter = 'latex', FontSize = 14);
ylabel('$Difference$', Interpreter = 'latex', FontSize = 14);


%% Вычеты
k = 1; m = 15;
A = m; B = 1; b =2*m; a = 2/k;
phi =linspace( 0,2*pi, 555);
r = [0.1, 1, 10];
figure(2)
for i = [1,2,3]
    x = r(i) * cos(phi);
    y = r(i) * sin(phi);
    plot(x, y, 'Linewidth',1); hold on;
end
plot([0, a, b],[0, 0 ,0], '.r');
legend('$r = 0.1$', '$r = 1$', '$r = 10$', '$Res$', Interpreter = 'latex', FontSize = 14);
xlabel('$Re$', Interpreter = 'latex', FontSize = 14);
ylabel('$Im$', Interpreter = 'latex', FontSize = 14);

