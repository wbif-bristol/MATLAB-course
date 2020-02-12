clear

xx = zeros(1000,1);
yy = zeros(1000,1);
x = 0;
y = 0;

for i = 1:1000
    th = rand(1)*360;
    x = x + cosd(th);
    y = y + sind(th);
    xx(i) = x;
    yy(i) = y;
end

fig1 = figure();
plot(xx,yy);
daspect([1 1 1]);
fig1.Position = [758   558   482   365];