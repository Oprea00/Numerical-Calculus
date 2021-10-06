for n = 10:15
  k1 = cond(hilb(n),1);
  k2 = cond(hilb(n),2);
  printf("n = %d, k1 = %d, k2 = %d\n", n, k1, k2);
end