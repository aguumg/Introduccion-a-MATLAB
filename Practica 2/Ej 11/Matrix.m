function A = Matrix(n)
A=0*rand(n,n);
A(1,:)=(1:n);
A(:,1)=(1:n);
for i=2:n
A(i,i)=1;       %OBS: Matlab completa los restantes aij con 0's.
end
end

