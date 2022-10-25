%%
m = 15; k =1 ;
f = @(z) z.^3 + 1i*m*z.^2 - k*z -2;
df = @(z) 3*z.^2 + 1i*m*z +- k;
true_roots = roots([1, 1i*m, -k, -2]); % roots([1 -3 7 -5])
disp(true_roots);
[x, y] = meshgrid(linspace(-3, 3, 2000), linspace(-16, 3, 2000));
% [x, y] = meshgrid(linspace(.9, 1.5, 501), linspace(.85, 1.3, 501));
z = x + 1i*y;
z = z(:);

z_root = zeros(length(z), 1);
for k = 1 : length(z)
    try
        z_root(k) = newton_method(f, df, z(k));
    catch
        z_root(k) = NaN;
    end
end

%%
color_mat = zeros(length(z), 3);% Black (default)
color_set = [0, 0.4470, 0.7410; % Matlab blue
    0.8500, 0.3250, 0.0980;     % Matlab red
    0.9290, 0.6940, 0.1250];    % Matlab yelllow

for k = 1 : length(true_roots)
    disp(k)
    ind = abs(z_root - true_roots(k)) < 10^(-8);
    color_mat(ind, :) = repmat(color_set(k, :), sum(ind), 1);
end

%%
figure(1);
scatter(real(z), imag(z),[], color_mat, '.');
hold on;
plot(real(true_roots), imag(true_roots), 'kx', 'MarkerSize', 6);
hold off;
xlabel('\Re(z)');
ylabel('\Im(z)');

