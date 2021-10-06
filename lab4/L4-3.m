x = linspace(0,6,13);
x2 = linspace(0,6,100);
f = @(x) exp(sin(x));
fx = f(x);

plot(x,f(x),'*')
hold on

result = newtonInterpolation(x,fx,x2);
plot(x2,result,'b')

plot(x2,f(x2),'r')
