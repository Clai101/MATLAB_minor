a = 1; b = 15; g = 10; T = 30;
tspace = [0 30];
u0 = [pi/2; 0; pi/2; 0];
syms psi_tt phi_tt psi_t phi_t psi phi 

loops = T*25;
t = linspace(tspace(1), tspace(2), loops);
u = deval(sol, t);
sol = ode45(@(t, y) f(t, y, a, b, g), tspan, u0);
figure(1);
plot(t, u(1, :));
hold on;
plot(t, u(2, :));
hold on;


function dydt = f(~, u, a, b, g)
    phi = u(1); psi = u(2); psi_t = u(3); phi_t = u(4); 
    dydt = [
        u(3);

        (a*cos(phi - psi)*sin(phi - psi)*phi_t^2 + ...
        b*sin(phi - psi)*psi_t^2 + 2*g*sin(phi) - ...
        g*cos(phi - psi)*sin(psi))/(a*(cos(phi - psi)^2 - 2));
        
        u(4); 
        
        (2*a*sin(phi - psi)*phi_t^2 + ...
        b*cos(phi - psi)*sin(phi - psi)*psi_t^2 - 2*g*sin(psi) + ...
        2*g*cos(phi - psi)*sin(phi))/(2*b - b*cos(phi - psi)^2)

        ];
end