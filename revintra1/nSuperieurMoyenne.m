function [ nSuperieure,moyenne ] = ...
    nSuperieurMoyenne(tab, limite)
somme = 0;
nSuperieure = 0;
moyenne = 0;

for i = 1:numel(tab)
    if tab(i) >= limite
        nSuperieure = nSuperieure + 1;
        somme = somme + tab(i);
    end
end

if nSuperieure > 0
    moyenne = somme / nSuperieure;
end
end
