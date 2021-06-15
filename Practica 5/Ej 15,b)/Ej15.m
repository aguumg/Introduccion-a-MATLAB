clear
hold off
f=@(x) sin(pi*x)+exp(x);
x(1)=0;
n=5;
for i=2:n+1
    x(i)=0+1*(i-1)/n;
end
P=InterpDifDiv(f,x);
C=(pi^(n+1)+exp(1))/(factorial(n+1)*2^(n+1));
g=@(x) sin(pi*x)+exp(x)+C;
h=@(x) sin(pi*x)+exp(x)-C;
T=linspace(0,1,100000);
plot(T,arrayfun(f,T),'y');
hold on
plot(T,arrayfun(g,T),'m')

plot(T,arrayfun(h,T),'c')

plot(T,polyval(P,T))

