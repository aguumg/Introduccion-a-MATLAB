function x=RSist(A,b)
[C,c]=DevDiagyb(A,b);
n=length(c);
for i=1:n
    x(i)=c(i)/C(i,i);
end
end

