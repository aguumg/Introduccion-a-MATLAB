function a = maxp(x)
n = length(x);
a = x(1);
for i=2:n
if x(i)>a
a = x(i);
end
end

