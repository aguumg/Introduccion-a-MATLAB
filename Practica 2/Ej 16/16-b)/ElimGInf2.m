function [B,C] = ElimGInf2(A)
[n,S] = size (A);
for k=1:n
    C(k,k)=1;
end
for j=1:n
    for i=j+1:n
        C(i,:) = C(i,:) - (A(i,j)/A(j,j)) * C(j,:);
        A(i,:) = A(i,:) - (A(i,j)/A(j,j)) * A(j,:);
        end
end
B=A;
end

