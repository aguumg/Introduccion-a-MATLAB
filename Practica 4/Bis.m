function e = Bis(str,a,b)
f = inline(str);
if f(a)*f(b)<0
    A(1)=a;
    B(1)=b;
    x(1)=(A(1)+B(1))/2;
    i =1
    if f(A(i))*f(x(i))<0
       A(i+1)=A(i);
       B(i+1)=x(i);
       x(i+1)=(A(i+1)+B(i+1))/2;
    end
    if f(x(i))*f(B(i))<0
       A(i+1)=x(i);
       B(i+1)=B(i);
       x(i+1)=(A(i+1)+B(i+1))/2;
    end
    if f(x(i)) == 0
       e = x(i);
    end
    i=i+1;
    while (i<100) & abs(x(i)-x(i-1))>0.01
        if f(A(i))*f(x(i))<0
            A(i+1)=A(i);
            B(i+1)=x(i);
            x(i+1)=(A(i+1)+B(i+1))/2;
        end
        if f(x(i))*f(B(i))<0
            A(i+1)=x(i);
            B(i+1)=B(i);
            x(i+1)=(A(i+1)+B(i+1))/2;
        end
        if f(x(i)) == 0
            e = x(i);
        end
        i=i+1;
    end
end
e=x(i);
end
