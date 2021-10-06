A = [ 10 7 8 7; 7 5 6 5; 8 6 10 9;7 5 9 10 ];
b = [ 32; 23; 33; 31 ];

%a
x1 = gauss(A,b)
cn = cond(A);
printf("conditioning number = %d\n\n", cn);

%b
b2 = [ 32.1; 22.9; 33.1; 30.9 ];
x2 = gauss(A,b2)
      
inputRelativeError = norm(b - b2,2) / norm(b,2)
outputRelativeError = norm(x - x2,2) / norm(x,2)
error = outputRelativeError / inputRelativeError;
printf("error = %d\n\n", error);

%c
A3 = [ 10 7 8.1 7.2; 7.08 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98 ];
x3 = gauss(A3,b)
      
inputRelativeErrorC = norm(A - A3,2) / norm(A,2)
outputRelativeErrorC = norm(x - x3,2) / norm(x,2)

errorC = outputRelativeErrorC / inputRelativeErrorC;
printf("c) error = %d\n", errorC);