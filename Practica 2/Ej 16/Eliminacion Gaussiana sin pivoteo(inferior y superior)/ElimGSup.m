function B = ElimGSup(A)
[n,S] = size (A);
for j=n:-1:1
    for i=j-1:-1:1
        A(i,:) = A(i,:) - (A(i,j)/A(j,j)) * A(j,:);
       end
end
B=A;
end
