a = 1;
b = 2;
f = @(x) x .* log(x);
n = 1;
value = 0.636294368858383;
error = 6e-4;
v = trapezium(f, a, b, n);

while abs(v - value) > error
  n = n + 1;
  v = trapezium(f, a, b, n);
end

printf("Approximation value for n=%d is: %d\n", n, v);