x = [2, 4, 6, 8];
dividedTable = zeros(4, 4);
dividedTable(1,1) = 4;
dividedTable(2,1) = 8;
dividedTable(3,1) = 14;
dividedTable(4,1) = 16;
for k = 2:4
   for n = 1:4-k+1
      dividedTable(n,k) = (dividedTable(n+1, k-1) - dividedTable(n,k-1)) / (x(k+n-1) - x(n));
   end
end
disp(dividedTable);

