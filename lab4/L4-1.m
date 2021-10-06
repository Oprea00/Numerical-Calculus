x = [1 1.5 2 3 4];
f = [0 0.17609 0.30103 0.47712 0.60206];
xx = [2.5 3.25];

aprox = newtonInterpolation(x,f,xx);
printf("\nApproximation of lg(2.5) = %f, approximation of lg(3.25) = %f \n", aprox(1), aprox(2));

yi=[10:35] ./ 10;

result = newtonInterpolation(x,f,yi);

printf("Maximum interpolation error is %f \n",
max(abs(log10(yi) - result)))