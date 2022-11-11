D = 1;
[z, x, y] = meshgrid(linspace(-10, 10, 500), linspace(-10, 10, 500), linspace(-10, 10, 500));
phi = (D* 0.25*(z.^2 + y.^2 + x.^2).^(-3/2) ) .*  (3 * (1 + ((x + y)./z).^2).^(-1)- 1);
[u, v, w] = gradient(phi);

l = streamline(stream3(x,y,z,u,v,w,10,10,10));
set(l,'Color','k');