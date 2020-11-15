function [n] = nDansIntervalle(tab, min, max)
n = 0;
for i = 1:numel(tab)
    if estDansIntervalle(tab(i), min, max)
        n = n + 1;
    end
end
end

