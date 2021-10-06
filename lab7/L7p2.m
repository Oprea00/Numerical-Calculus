temperature = [0,10,20,30,40,60,80,100];
pressure = [0.0061,0.0123,0.0234,0.0424,0.0738,0.1992,0.4736,1.0133];

p1 = polyfit(temperature,pressure,2);
p2 = polyfit(temperature,pressure,4);
disp(p1);
disp(p2);
v1 = polyval(p1,45);
v2 = polyval(p2,45);

exactValue = 0.095848;
error1 = abs(exactValue - v1)
error2 = abs(exactValue - v2)

hold on
range = [0:0.01:100];
plot(temperature, pressure, 'bx');
plot(range, polyval(p1, range), 'r-');
plot(range, polyval(p2, range), 'g-');