function C=InvMatrix(A)  % Calculo la inversa haciendo la triangulacion doble contra la identidad.
[E,F]=ElimGInf2(A);                     %Hago Elim Gaussiana Inferior a A y Id y las devuelvo.
[B,C]=ElimGSup2(E,F);                   %Hago Elim Gaussiana Superior a las A e Id de antes y las devuelvo.
[f,c]=size(B)
for i=1:f
    C(i,:)=C(i,:)/B(i,i);
    B(i,:)=B(i,:)/B(i,i);
end
end

