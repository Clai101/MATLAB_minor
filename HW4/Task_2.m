k = 15; g = 10/6;
t_space  =  linspace(0, pi/2, 15);
for i = 1:100
    phi_0 = 3*pi/400*i;
    fun = @(phi) ((cos(phi) - cos(phi_0))*(2*g/k)).^(-1/2);
    t_space(i) = integral(fun,-phi_0,phi_0);
end
figure(1);
xlabel('$\varphi_0$', Interpreter = 'latex', FontSize = 14);
ylabel('$T$', Interpreter = 'latex', FontSize = 14);
grid on;
hold on;
plot((1:100)*3*pi/400, 2*t_space)