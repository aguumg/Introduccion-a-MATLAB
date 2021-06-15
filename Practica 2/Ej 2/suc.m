function s = suc(A)
s(1)=0;
for i=2:100
    x=(-1 + 2.*rand(3,1));
    s(i)=maxp([s(i-1) (norm(A*x,2)/norm(x,2))]);
end
end
