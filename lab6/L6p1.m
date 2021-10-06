x = [0, pi / 2, pi, (3 * pi) / 2, 2 * pi];
y = sin(x);

v1 = spline(x, y);
natural = ppval(v1, pi/4);

v2 = spline(x, [1, y, 1]);
clamped = ppval(v2, pi/4);

printf("Value of function at pi/4: %f\n", sin(pi/4));
printf("Value of cubic natural spline function at pi/4: %f\n", natural);
printf("Value of cubic clamped spline function at pi/4: %f\n", clamped);

interval = linspace(0, 2*pi, 50);
hold on;
plot(interval, sin(interval));
xx = ppval(v1, interval);
plot(interval, xx);
yy = ppval(v2, interval);
plot(interval, yy);
hold off