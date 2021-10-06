%a)
t=-1:0.01:1
T=@(n,t)cos(n*acos(t))
hold on
for n=1:3
    plot(t,T(n,t))
end
hold off


%b)
hold on
for n=1:5
    plot(t,ChebPoly(n))
end
hold off
function val = ChebPoly(n)
    t=-1:0.01:1
    if n==0
        val = 1;
    elseif n==1
        val = t;
    else 
        val = 2.*t.*ChebPoly(n-1)-ChebPoly(n-2);
    end
end
