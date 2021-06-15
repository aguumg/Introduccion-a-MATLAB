function x = Jacobi(A,b,epsilon)
[f,c]=size(A);
[L,D,U]=LDU(A);
B=-inv(D)*(L+U);
J=jordan(B);
r=max(abs(diag(J,0)));
X(:,2)=rand(f,1);
i=1;
if r>=1
    display('El metodo no converge')
else
        while norm(X(:,i+1)-X(:,i))>epsilon
        X(:,i+2)=B*X(:,i+1)+inv(D)*b';
        i=i+1;
        end
    x=X(:,i+1);
end
end
