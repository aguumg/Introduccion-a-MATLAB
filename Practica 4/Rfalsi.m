function e = Rfalsi(str,a,b) %% f(a)*f(b)<0 necesariamente %%
f = inline(str);
i = 1;
if f(a)*f(b)<0
    A(1)=a;
    B(1)=b;
    x(1)=(f(B(1))*A(1)-f(A(1))*B(1))/(f(B(1))-f(A(1)));
    if f(A(1))*f(x(1))<0
       A(2)=A(1);
       B(2)=x(1);
       x(2)=(f(B(2))*A(2)-f(A(2))*B(2))/(f(B(2))-f(A(2)));
    end
    if f(x(1))*f(B(1))<0
       A(2)=x(1);
       B(2)=B(1);
       x(2)=(f(B(2))*A(2)-f(A(2))*B(2))/(f(B(2))-f(A(2)));
    end
    if f(x(1)) == 0
       e = x(1);
       return
    end
    i=i+1;
    while (i<100) & abs(x(i)-x(i-1))>0.01
        if f(A(i))*f(x(i))<0
            A(i+1)=A(i);
            B(i+1)=x(i);
            x(i+1)=(f(B(i+1))*A(i+1)-f(A(i+1))*B(i+1))/(f(B(i+1))-f(A(i+1)));
        end
        if f(x(i))*f(B(i))<0
            A(i+1)=x(i);
            B(i+1)=B(i);
            x(i+1)=(f(B(i+1))*A(i+1)-f(A(i+1))*B(i+1))/(f(B(i+1))-f(A(i+1)));
        end
        if f(x(i)) == 0
            e = x(i);
        end
        i=i+1;
    end
end
e=x(i);
end


 