function B = Image(A,r)
C=imread(A);
D=SVDImg(C,r);
B=imshow(D);
end

