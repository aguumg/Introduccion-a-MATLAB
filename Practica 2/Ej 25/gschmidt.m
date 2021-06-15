function B = gschmidt (A) %Recibe una matriz inversible (columnas l.i.)
[f,c]=size(A);
D(:,1)=A(:,1);
B(:,1)=A(:,1);%/norm(A(:,1),2);
C=0*A;
for i=2:c
    for j=1:i-1
        C(:,j)=((A(:,i)'*B(:,j))/(norm(B(:,j),2)^2))*B(:,j);
    end
        D(:,i)=A(:,i)-(sum(C'))';  %El comundo 'sum' suma las filas de una matriz.
        B(:,i)=D(:,i);%/norm(D(:,i),2);
end
end
