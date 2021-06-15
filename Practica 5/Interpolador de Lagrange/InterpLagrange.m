function [ P ] = InterpLagrange( x,y )
A=BLagrange(x);
P=y(1)*A(:,1);
[s,t]=size(A);
for i=2:t
    P=P+y(i)*A(:,i);
end
end

