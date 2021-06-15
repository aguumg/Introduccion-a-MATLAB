%%
clear
x = input('Ingrese el vector "x"'); %% x tiene que venir en orden
y = input('Ingrese el vector "y"'); %% Tienen que tener el mismo tamaño
m = input('Ingrese un número m');
[r,n] = size(x);
%% Generemos A
j = ones(1,n);
A (:,1) = j;
for i = 2:(m+1)
    j = j.*x;
    A(:,i) = j;
end
%% Hagamos la cuenta
[Q,R] = qr(A,0);
P = inv(R)*Q'*y';
P = fliplr(P');
T = linspace(x(1),x(n),100000);
clf
plot(x,y,'.r')
hold on
plot(T,polyval(P,T))
%%
tic
linspace(0,1,1000000)
toc


