function [ T ] = Tchebychev( n )
if n==1
    T=1;
end
if n==2
    T=[1 0];
end
A(:,1)= [zeros(1,n-1) 1];
A(:,2)=[zeros(1,n-2) 1 0];
for i=3:n
    u=A(:,i-1);
    A(:,i)=2*[u(2:length(u))' 0]-A(:,i-2)';
end
T=A(:,n)';
end

