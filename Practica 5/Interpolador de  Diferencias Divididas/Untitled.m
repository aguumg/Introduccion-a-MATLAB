clear
x=[-1 0 2 3];
y=[-1 3 11 27];
A(:,1)=y;
for i=1:length(x)-1
    for j=1:length(x)-i
        b=A(:,i);
    a(j)=((b(j+1))-b(j))/(x(j+i)-x(j));    %Los nodos deben ser todos =/.
    end
    A(:,i+1)=[a 0*ones(4-length(a))];
    
end
A