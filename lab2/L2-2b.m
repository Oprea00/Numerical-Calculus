t=-1:0.01:1;
Tn=t;
Tn1=1;
for n=1:5
    T=Tn*2.*t - Tn1;
    plot(t,T);
    hold on;
    Tn1=Tn;
    Tn=T;
end
