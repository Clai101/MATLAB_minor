a = 1; b = 15; g = 10; T = 60;
tspace = [0 T];
u0 = [pi; 0; pi/2; 0];
syms psi_tt phi_tt psi_t phi_t psi phi 
sol = ode45(@(t, y) f(t, y, a, b, g), tspace, u0);
loops = T*10;
t = linspace(tspace(1), tspace(2), loops);
u = deval(sol, t);

figure(1);
plot(t, u(1, :));
hold on;
plot(t, u(2, :));


figure; % отрисовка анимации
for j = 1:loops

    % y(1, j) это угол phi, а y(3, j) — psi
    x1 = a*sin(u(1, j)); y1 = -a*cos(u(1, j));
    scatter(x1, y1, 100, 'r', 'filled'); % первый маятник
    hold on;
    line([0, a*sin(u(1, j))], [0 -a*cos(u(1, j))], 'Color', 'r'); % стержень на котором он крутится

    % второй маятник;
    x2 = b*sin(u(3, j)); y2 = -b*cos(u(3, j));
    scatter(x1 + x2, y1 + y2, 100, 'b', 'filled');
    line([a*sin(u(1, j)), a*sin(u(1, j)) + b*sin(u(3, j))], [-a*cos(u(1, j)), -a*cos(u(1, j)) - b*cos(u(3, j))], 'Color', 'b');
    hold off;

    title(['Time = ' num2str(t(j))]); % обновляем время
    axis([-(a+b+1), (a+b+1), -(a+b+1), (a+b+1)]);
    drawnow;
end

function dydt = f(t, y, a, b, g)
    phi = y(1); phi_t = y(2); psi = y(3); psi_t = y(4);
    dydt = [
        y(2);
        (a*cos(phi - psi)*sin(phi - psi)*phi_t^2 + b*sin(phi - psi)*psi_t^2 + 2*g*sin(phi) - g*cos(phi - psi)*sin(psi))/(a*(cos(phi - psi)^2 - 2));
        y(4);
        (2*a*sin(phi - psi)*phi_t^2 + b*cos(phi - psi)*sin(phi - psi)*psi_t^2 - 2*g*sin(psi) + 2*g*cos(phi - psi)*sin(phi))/(2*b - b*cos(phi - psi)^2)
        ];
end