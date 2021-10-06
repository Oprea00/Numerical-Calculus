axis([0 1 0 1]);
[x,y] = ginput(5);

a = min(x);
b = max(x);
v = linspace(a,b,50);
p = spline(x,y);

hold on
plot(x, y, '*b')
plot(v, ppval(p, v), 'r')
hold off