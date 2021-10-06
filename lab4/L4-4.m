function A = Aitken(x, y, xx)
  [n, m] = size(x);
  f = [y'];
  for i = 0:m-1
    for j = 0:i-1
      d = det([f(j + 1, j + 1), x(j + 1) - xx; f(i + 1, j + 1), x(i + 1) - xx]);
      f(i + 1, j + 2) = 1 / (x(i + 1) - x(j + 1))* d;
    end
  end
  
  A = f;
end

x = [64 81 100 121 144 169];
y = [8 9 10 11 12 13];
a = 115;
approx = Aitken(x, y, a);
printf("Approximation of sqrt(115) using Aitken's algorithm = %f \n",
approx(6, 6));