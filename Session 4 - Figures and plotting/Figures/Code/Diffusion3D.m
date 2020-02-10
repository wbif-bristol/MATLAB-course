clear

xx = zeros(1000,1);
yy = zeros(1000,1);
zz = zeros(1000,1);
x = 0;
y = 0;
z = 0;

for i = 1:1000
    th = rand(1)*360;
    phi = rand(1)*180;
    x = x + cosd(th)*cosd(phi);
    y = y + cosd(th)*sind(phi);
    z = z - sin(th);
    xx(i) = x;
    yy(i) = y;
    zz(i) = z;
end

fig1 = figure();
plot3(xx,yy,zz);
daspect([1 1 1]);
fig1.Position = [758   558   482   365];