a=0;
b=1;
f=@(x) 2./(1+x.^2);
myIntegral = integral(f, a, b)

%a
integralTrapeziumApprox = (b-a)/2*(f(a)+f(b))

%b
fplot(f,[a,b]);
hold on;
fill([0,0,1,1],[0,f(0),f(1),0],'r')

%c
integralSimpsonsApprox = (b-a)/6*(f(a)+4*f((a+b)/2)+f(b)) 