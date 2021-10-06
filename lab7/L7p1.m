time = 1:7;
temperature = [13,15,20,14,15,13,10];

A = [sum(time.^2), sum(time); sum(time), length(time)];
B = [sum(x.*temperature); sum(temperature)];

X = linsolve(A,B);
v = polyval(X, 8)

p = polyfit(time, temperature, 1);
v2 = polyval(p,8)

minimumE = sum((f-polyval(p,time)).^2)

plot(time,temperature,'bx');
hold on

xp = 1:0.01:8;
plot(xp, polyval(p, xp),'r-');