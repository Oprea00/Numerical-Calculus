function y = romberg_7(a, b, f, k)
  h = b - a;
  if k == 0
    y = h/2*(f(a) + f(b));
  else
    q0 = romberg_7(a, b, f, k-1);
    coef = (2 * [1:2^(k-1)] - 1) ./ 2^k;
    s = sum(f(a + coef .* h));
    y = 1/2 * q0 + h/2^k*s;
  end
end