function [L,D,U] = LDU(A)
[f,c]=size(A);
L=0*A;
D=0*A;
U=0*A;
D(1,1)=A(1,1);
for i=2:f
    for j=1:i-1
    L(i,j)=A(i,j);
    U(j,i)=A(j,i);
    end
    D(i,i)=A(i,i);
end
end

