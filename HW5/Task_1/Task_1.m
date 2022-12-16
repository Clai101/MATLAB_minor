k=15; m=1;
figure(1)
f = @(x, y) exp(1i*m*(x+1i*y))*tan(k*(x+1i*y));
nexttile
fcontour(@(x, y) real(f(x,y)));
xlabel('x')
ylabel('y')
title('Re(f(z))')
nexttile
fcontour(@(x, y) imag(f(x,y)));
xlabel('x')
ylabel('y')
title('Im(T(z))')


T = @(x, y) k*(x+1i*y) + 1i*m*k*(x+1i*y)^2;
figure(2)
nexttile
fcontour(@(x, y) real(T(x,y)));
xlabel('x')
ylabel('y')
title('Re(T(z))')
nexttile
fcontour(@(x, y) imag(T(x,y)));
xlabel('x')
ylabel('y')
title('Im(T(z))')


P = @(x, y) (k*(x+1i*y))/(1 - 1i*m*(x+1i*y));
figure(3)
nexttile
fcontour(@(x, y) real(P(x,y)));
xlabel('x')
ylabel('y')
title('Re(P(z))')
nexttile
fcontour(@(x, y) imag(P(x,y)));
xlabel('x')
ylabel('y')
title('Im(P(z))')

figure(4)
nexttile
fcontour(@(x, y) abs(P(x,y) - f(x,y)) );
xlabel('x')
ylabel('y')
title('$\Delta_{P(z)}$', 'Interpreter', 'latex');
nexttile
fcontour(@(x, y) abs(T(x,y) - f(x,y)) );
xlabel('x')
ylabel('y')
title('$\Delta_{T(z)}$', 'Interpreter', 'latex');