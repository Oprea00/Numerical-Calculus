h=0.25;
xi = @(i) 1+i*h;
x = xi(0:6)
m=6;
y = sqrt(5.*x.^2+1); 
y
init=size(y,2);
matrix = zeros(7,7)
for diff=1:m
    
    for i=1:init-diff
        y(i) = y(i+1)-y(i);
    end   
    y = y(1:size(y,2)-1);
    y'
end
