r = 110; 
p = 75; 
a = 0; 
b = 2 * pi;
n1 = 2; 
n2 = 3;

lhs = 60 * r / (r * r - p * p);
f = @(x) sqrt(1 - (p / r) ^ 2 * sin(x));

r1 = trapezium(f, a, b, n1);
r2 = trapezium(f, a, b, n2);

integral1 = lhs * r1;
integral2 = lhs * r2;

printf("Integral value for %d is: %d\n", n1, integral1);
printf("Integral value for %d is: %d\n", n2, integral2);