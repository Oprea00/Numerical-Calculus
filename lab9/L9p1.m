x = linspace(0,10,20);
f = @(x) exp(-x.^2);
a = 1;
b = 1.5;

% a 
r = rectangle(a,b,f);
printf("Evaluation of integral using rectangle formula: %d\n", r);

% b 
hold on
axis([a b f(b) f(a)])
fill([a,a,b,b], [0,f((a+b)/2),f((a+b)/2), 0], 'r');
fplot(f,[a b]);

% c 
c1 = rectangleRepeated(a,b,150,f)
c2 = rectangleRepeated(a,b,500,f)