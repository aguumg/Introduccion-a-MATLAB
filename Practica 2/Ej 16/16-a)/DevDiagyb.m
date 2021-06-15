function [B,b]=DevDiagyb(A,b)
[C,c]=ElimGInf2(A,b);
[B,b]=ElimGSup2(C,c);
end

