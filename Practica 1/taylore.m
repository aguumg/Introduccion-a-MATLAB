function [ a ] = taylore(x,y)
a(1)=1;
for n=2:y
   a(n) = a(n-1) + x^n / factorial(n);
end