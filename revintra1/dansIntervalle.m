function [tabIntervalle] = dansIntervalle(tab, min, max)
tabIntervalle = [];
for i = 1:numel(tab)
    if estDansIntervalle(tab(i), min, max)
        tabIntervalle = [tabIntervalle, tab(i)];
    end
end
end

