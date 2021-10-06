x=[1 2 3 4 5];
f=[22 23 25 30 28];
yi = [2.5];

aprox = newtonInterpolation(x,f,yi);
printf("\nPounds of potatoes for 2.5 pounds fertilizer = %f\n", aprox(1));

plot(x,f,'b*')
hold on

z = 0:0.01:6;
poly = newtonInterpolation(x, f, z);

plot(z, poly,'r')