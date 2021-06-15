x=[-3,-3];
G=@(X)[X(2)-(X(1))^2+2,X(1)-(X(2))^2+2];
J=@(X)[-2*X(1) 1;1 -2*X(2)];
T=10^(-5);
for i=0:6
    for j=0:6
        [B,I] = Newton(G,J,x+[i,j],T);
        if I<50
            B
            return
    end
    end
end
