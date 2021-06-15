clear;
hold off;
f=@(x) (-1)*log(x);
x(1)=1;
for i=2:5
    x(i)=1+(10-1)*i/5;
end
P=InterpDifDiv(f,x);
g=@(x) exp(polyval(P,x));
T=linspace(1,10,100000);
plot(T,arrayfun(g,T)) %No hace falta usar 'arrayfun' porque g=exp(polyval...) entonces no va a haber problemas con dimensiones (pues polyval devuelve numeros).

