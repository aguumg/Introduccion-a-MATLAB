function B = SVDImg(A,r)
[q,w,t]=size(A)
for i=1:q
    for j=1:w
        C(i,j)=A(i,j);
    end
end
[U,S,V]=svd(C);
[f,c]=size (S);
for i=r+1:min(f,c)
    S(i,i)=0;
end
B=U*S*V';
for k=1:t
    B(:,:,k)=A(:,:,k);
end

