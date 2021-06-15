function e = Biseccion(str,a,b)
f = inline(str);
if f(a)*f(b)<0
    c(1)=a;
    d(1)=b;
    x(1)=(c(1)+d(1))/2;
    i=1;
    while i<3
    while f(c(i))*f(x(i))<0
        c(i+1)=c(i);
        d(i+1)=x(i);
        x(i+1)=(c(i+1)+d(i+1))/2;
        i=i+1;
    end
    while f(x(i))*f(d(i))<0
        c(i+1)=x(i);
        d(i+1)=d(i);
        x(i+1)=(c(i+1)+d(i+1))/2;
        i=i+1;
    end
    i=i+1;
    end
    while norm(x(i+1)-x(i))>0.1
     while f(c(i))*f(x(i))<0
        c(i+1)=c(i);
        d(i+1)=x(i);
        x(i+1)=(c(i+1)+d(i+1))/2;
        i=i+1;
    end
    while f(x(i))*f(d(i))<0
        c(i+1)=x(i);
        d(i+1)=d(i);
        x(i+1)=(c(i+1)+d(i+1))/2;
        i=i+1;
    end
    i=i+1;
    end
    e=x(i+1);
    else
        e=0;
    end
end

