function [X,Y]=HermiteInterpolation(t,d,v,x)
l=length(t);
z=zeros(1,2*l);  
z(1:2:end)=t; 
z(2:2:end)=t; 
f=zeros(1,2*l);  
f(1:2:end)=d; 
f(2:2:end)=d; 

%construct matrix of divided diff table
m=zeros(2*l,2*l); 
m(:,1)=f';
m(1:2:end,2)=v';
m(2:2:2*l-1,2)=(d(2:l)-d(1:l-1))./(t(2:l)-t(1:l-1));
for k=3:2*l
    for i=1:2*l-k+1
        m(i,k)=(m(i+1,k-1)-m(i,k-1))/(z(i+k-1)-z(i));
    end
end

#Hermite interpolation
lx=length(x);   
p=ones(lx,1);
s=m(1,1)*ones(lx,1); 
d=0;
v=0;
for j=1:lx
  for i=1:2*l-1
    d=d*(x(j)-z(i))+p(j);
    p(j)=p(j)*(x(j)-z(i));
    s(j)=s(j)+p(j)*m(1,i+1);
    v=v+ m(1,i+1)*d;
  end
end

X=s';
Y=v';
endfunction