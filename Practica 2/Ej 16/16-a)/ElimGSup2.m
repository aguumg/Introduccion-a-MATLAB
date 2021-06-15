function [B,b] = ElimGSup2(A,b)
[n,S] = size (A);
for j=n:-1:1
    for i=j-1:-1:1
        b(i)=b(i)- (A(i,j)/A(j,j)) * b(j);
        A(i,:) = A(i,:) - (A(i,j)/A(j,j)) * A(j,:);
       end
end
B=A;
end

