function [ P ] = InterpCoefIndet( x,y )
t=length(x);
j=ones(1,t);
A(:,1)=j;
for i=2:t
    j=j.*x;
    A(:,i)=j;
end
P=inv(A)*y';
P=flipud(P); %Flip Up-Down.
end

