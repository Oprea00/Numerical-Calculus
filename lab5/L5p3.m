f = @(x) sin(2*x);
deriv = @(x) 2*cos(2*x);
xx = linspace(-5, 5, 100);

plot(xx, f(xx), 'b');
hold on;

x = linspace(-5, 5, 15);
y = f(x);
dy = deriv(x);

plot(x, y, 'x');

[h,_] = HermiteInterpolation(x, y, dy, xx);
plot(xx, h, 'r');