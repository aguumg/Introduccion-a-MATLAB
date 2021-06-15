function B = ElimGInf(A)
[n,S] = size (A);
for j=1:n
    for i=j+1:n
        A(i,:) = A(i,:) - (A(i,j)/A(j,j)) * A(j,:);
    end
end
B=A;
end

