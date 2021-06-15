function [b,I] = Newton(F,J,x,T)
A(:,1)=x';
if F(A(:,1))==0
    b=A(:,1);
    I=0;
else
A(:,2)=A(:,1)-inv(J(A(:,1))) * (F(A(:,1)))';
i=2;
while i<50 & (norm(A(:,i)-A(:,i-1),inf)/norm(A(:,i),inf))>T
    A(:,i+1)=A(:,i)-inv(J(A(:,i))) * (F(A(:,i)))';
    b=A(:,i+1);
    I=i;
    i=i+1;
end
end
end

