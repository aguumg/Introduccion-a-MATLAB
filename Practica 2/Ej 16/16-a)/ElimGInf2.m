function [B,b] = ElimGInf2(A, b)
[n,S] = size (A);
for j=1:n
    for i=j+1:n
        b(i)=b(i)- (A(i,j)/A(j,j)) * b(j);
        A(i,:) = A(i,:) - (A(i,j)/A(j,j)) * A(j,:);
        end
end
B=A;
end
