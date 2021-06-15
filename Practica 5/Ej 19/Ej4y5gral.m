function [ P ] = Ej4y5gral( f,n )
hold off;
T=Tchebychev(n+1);
x=CerosT(T);
P=InterpDifDiv(f,x);
T=linspace(-1,1,100000);
plot(T,arrayfun(f,T));
hold on;
P=plot(T,polyval(P,T));
end

