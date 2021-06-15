A=[-100 0 0;0 1 0;0 0 7];

J=jordan(A);

r=max(abs(diag(J,0)));
J
r