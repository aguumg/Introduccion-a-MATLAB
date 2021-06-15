clear
hold off
n=10;
x(1)=-1;
for i=2:n+1
    x(i)=-1+2*i/(n+1);
end
W=PoliW(x);
T=Tchebychev(n+2);
I=linspace(2,5,100000);
plot(I,polyval(W,I),'r')
hold on
plot(I,polyval(T,I),'y')