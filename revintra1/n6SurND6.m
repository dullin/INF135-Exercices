function [n6] = n6SurND6(nD6)
n6 = 0;

tabD6 = lancerND6(nD6);

for i = 1:numel(tabD6)
    if tabD6(i) == 6
        n6 = n6 + 1;
    end
end
end

