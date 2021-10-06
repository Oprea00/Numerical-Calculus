t = [8.3 8.6];
d = [17.56492 18.50515];
v = [3.116256 3.151762];
x = [8.4]; 

[H,_] = HermiteInterpolation(t, d, v, x);
printf("Approximation of f(8.4) = %f\n", H);

error = abs(x*log(x) - H);
printf("Absolute error = %f\n", error);