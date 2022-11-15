%%
D = 1;
[x, y, z] = meshgrid(linspace(-10, 10, 200), linspace(-10, 10, 200), linspace(-10, 10, 200));
phi = (D* 0.25*(z.^2 + y.^2 + x.^2).^(-3/2) ) .*  (3 * (1 + ((x + y)./z).^2).^(-1)- 1);
[u, v, w] = gradient(phi);
[startX,startY,startZ] = meshgrid(-9:4:9, -9:4:9 , [-9, 9]);
%l_1 = streamline(x, y, z, u,v,w, startX,startY,startZ);
set(l_1,'Color','r');
hold on;
l_2 = streamslice(x, y, z, u,v,w, 0, 0, 0);
hold on;
view(3)
xlabel('Ox') 
ylabel('Oy')
zlabel('Oz') 
