a = 0;
b = pi;
f = @(x) 1./(4+sin(20.*x));
n1 = 10;
n2 = 30;

s1 = simpsons(f,a,b,n1);
s2 = simpsons(f,a,b,n2);

printf("Integral with n=%d is %d\n", n1, s1);
printf("Integral with n=%d is %d\n", n2, s2);