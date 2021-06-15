function [ P ] = InterpDifDiv2( x,y )
b=DifDiv(x,y);
P=b(1);
t=length(x);
for i=2:t
    P=[zeros(length(PoliW(x(1:i-1)))-length(P),1) P]+b(i)*PoliW(x(1:i-1));
end
end

