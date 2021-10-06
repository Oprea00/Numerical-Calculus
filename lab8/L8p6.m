a = 0;
n1 = 4;
n2 = 10;
lhs = 2./sqrt(pi);

myIntegral = @(t) exp(-1 .* (t .^ 2));
erf = @(x, n) lhs .* simpsons(myIntegral, a, x, n);

result1 = erf(0.5, n1)
result2 = erf(0.5, n2)

correctValue = 0.520499876;
error1 = abs(result1-correctValue)
error2 = abs(result2-correctValue)