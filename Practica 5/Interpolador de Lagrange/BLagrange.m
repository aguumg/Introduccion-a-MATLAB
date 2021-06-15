function [ A ] = BLagrange( x )
[s,t]=size(x);
for i=1:t
    for j=1:t
        if j==i
        y(j)=1;
        j=j+1;
    else
        y(j)=0;
        j=j+1;
    end
    end
    A(:,i)=polyfit(x,y,t-1);        %Notar que en definitiva A=Id.
end
end

