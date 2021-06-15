tic
A=[1 1 1 1;1 2 2 2;1 2 3 3;1 2 3 4];
b=[1 2 3 4];
[C,c]=DevDiagyb(A,b);
n=length(c);
for i=1:n
    x(i)=c(i)/C(i,i);
end
x
toc


tic
A=[1 1 1 1;1 2 2 2;1 2 3 3;1 2 3 4];
b=[1 2 3 4];
y=A\b';
y
toc


tic
A=[1 1 1 1;1 2 2 2;1 2 3 3;1 2 3 4];
b=[1 2 3 4];
z=inv(A)*b';
z
toc
