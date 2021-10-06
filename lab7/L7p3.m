axis([0 3 0 5]);
[x, y] = ginput(10);

hold on;
plot(x, y, 'x');

p = polyfit(x, y, 2);
xx = [0: 0.01: 3];

plot(xx, polyval(p, xx));