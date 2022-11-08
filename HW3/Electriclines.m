D = 1;
[z, x] = meshgrid(linspace(-10, 10, 500), linspace(-10, 10, 500));
phi = (D* 0.25*(z.^2 + x.^2).^(3/2) ) *  (3 * (1 + (x/z).^2).^(-2)- 1);
[u, v] = gradient(phi);
l = streamslice(u,v);
set(l,'Color','k');