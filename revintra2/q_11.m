i = 0;
x = 2;
t = zeros(1,5);

t(1) = 240;

for i=2:numel(t)
    t(i) = t(i-1)/x;
    x=x+1;
end
