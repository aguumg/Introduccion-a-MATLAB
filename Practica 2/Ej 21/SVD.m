function [B,S] = SVD(A,r)
[U,S,V]=svd(A);
[f,c]=size (S)
for i=r+1:min(f,c)
    S(i,i)=0;
end
B=U*S*V';
end

