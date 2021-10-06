function y=adquad(a, b, f, err, n)
  y1 = simpson(f, a, b, n);
  y2 = simpson(f, a, (a+b)./2, n) + simpson(f, (a+b)./2, b, n);
  
  if abs(y1 - y2) < 15 .* err
    y = y2;
    return;
  else
    y = adquad(a, (a+b)./2, f, err./2,n) + adquad((a+b)./2, b, f, err./2,n);
  end
end