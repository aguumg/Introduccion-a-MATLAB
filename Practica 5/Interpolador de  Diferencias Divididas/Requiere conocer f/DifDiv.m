function [ b ] = DifDiv( f,x )
A(:,1)=arrayfun(f,x);
t=length(x);
for i=1:t-1
    for j=1:t-i
        b=A(:,i);
    a(j)=((b(j+1))-b(j))/(x(j+i)-x(j));    %Los nodos deben ser todos =/.
    end
    A(:,i+1)=[a 0*ones(t-length(a))];
end
b=A(1,:);
end

