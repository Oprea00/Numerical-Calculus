a = 0;
b = 1;
f = @(x) 2./(1+x.*x);

eps = 1e-4;
actual = pi/2;

n = 1;
romberg = romberg_7(a, b, f, n);
while abs(romberg - actual) > eps
  n = n + 1;
  romberg = romberg_7(a, b, f, n);
end
printf("Approximation with romberg_7 after n = %d, value = %d\n", n, romberg);


n = 1;
romberg2 = romberg_10(a, b, f, n);
while abs(romberg2 - actual) > eps
  n = n + 1;
  romberg2 = romberg_10(a, b, f, n);
end
printf("Approximation with romberg_10 after n = %d, value = %d\n", n, romberg2);