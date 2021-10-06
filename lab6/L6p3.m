x = 0: pi/4 : 2 * pi;
f = cos(x);

interval = linspace(0,2*pi,50);
pol = interp1(x,f,"pp"); 

hold on
plot(interval, cos(interval))
plot(interval, ppval(pol, interval))