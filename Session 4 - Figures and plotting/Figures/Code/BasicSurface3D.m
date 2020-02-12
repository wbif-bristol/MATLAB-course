clear

[X,Y] = meshgrid(1:5,1:4);
Z = [0,0,1,3,2;1,2,5,7,4;2,4,6,8,3;2,4,5,4,3];

fig4 = figure;
surf(X,Y,Z);
%daspect([1 1 1]);
fig4.Position = [758   558   482   365];
ax = gca;
ax.XLim = [1 5];
ax.YLim = [1 4];
ax.ZLim = [0 8];
xlabel('X');
ylabel('Y');
zlabel('Z');