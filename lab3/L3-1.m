function val = Ai(i,x)
  m = length(x);
  p = 1;
  for j = 1:m
    if (i~=x(j))
      p = p*(i-x(j));
    end
  end
  val = 1/p;
end

% x,y - the vectors, z the point
function val = lagrangeInterpolation(x, y, z)
  m = length(x);
  s1 = 0;
  s2 = 0;
  for i=1:m
    s1 = s1 + Ai(x(i),x)*y(i)/(z-x(i));
    s2 = s2 + Ai(x(i),x)/(z-x(i));
  end
  val = s1/s2;
end

x = [1930, 1940, 1950, 1960, 1970, 1980];
y = [123203, 131669, 150697, 179323, 203212, 226505];


lagrangeInterpolation(x, y, 1955)
lagrangeInterpolation(x, y, 1995)