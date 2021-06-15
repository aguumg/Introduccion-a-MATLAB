function [B,C] = ElimGSup2(A,C)
[n,S] = size (A);
for j=n:-1:1
    for i=j-1:-1:1
        C(i,:) = C(i,:) - (A(i,j)/A(j,j)) * C(j,:);
        A(i,:) = A(i,:) - (A(i,j)/A(j,j)) * A(j,:);
        end
end
B=A;
end