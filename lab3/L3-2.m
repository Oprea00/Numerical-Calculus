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

x = [81 100 121];
y = [9 10 11];
lagrangeInterpolation(x, y, 115)
