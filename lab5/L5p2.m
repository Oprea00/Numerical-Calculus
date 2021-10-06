t = [1 2];
d = [0 0.6931];
v = [1 0.5];
x = 1.5;

[approxV,_] = HermiteInterpolation(t,d,v,x);

error = abs(log(x) - approxV);
printf("Absolute error for ln(1.5) = %f\n", error);