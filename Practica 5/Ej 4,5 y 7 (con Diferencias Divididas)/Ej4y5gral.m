function [ P ] = Ej4y5gral( f,n )
hold off;
x(1)=-1;
for i=2:n+1
    x(i)=-1+2*(i-1)/n;
end
P=InterpDifDiv(f,x);
T=linspace(-1,1,100000);
plot(T,arrayfun(f,T));
hold on;
P=plot(T,polyval(P,T));
end

