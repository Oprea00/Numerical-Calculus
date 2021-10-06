function N=newtonInterpolation(x,f,xx)
% x - nodes
% f - the values of the function calculated in x
% xx - value of approx
 
n=length(x)-1;
%divided differences table
m=zeros(n+1);
m(:,1)=f';

for i = 2:length(x)
  for j = 1:length(x)-i+1
      m(j,i) = (m(j+1, i-1) - m(j, i-1)) / (x(i+j-1)-x(j));
  end
end

lx=length(xx);
p=ones(1, lx);
s=m(1,1)*ones(1,lx);
for j=1:lx
  for i=1:n
    p(j)=p(j)*(xx(j)-x(i));
    s(j)=s(j)+p(j)*m(1,i+1);
  end
end
N=s;
end
  