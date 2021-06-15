function [Q,R] = QR(A) %QR para con columnas l.i.
Q=gschmidt(A);
R=Q'*A;
end

