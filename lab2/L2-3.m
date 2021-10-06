function taylor(n)
  hold on;
  T = @(x) ones(size(x));
  for k = 0 : n
    T = @(x) T(x) + (x.^k) / factorial(k);
    fplot(T, [-1, 3]);
  end
end

taylor(6)
