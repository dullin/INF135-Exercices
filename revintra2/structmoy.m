function [moy] = moyenneDessusDessous(tab, limite)
nbDessus = 0;
ndDessous = 0;
moy.moyenneDessus = 0;
moy.moyenneDessous = 0;
for i = 1:numel(tab)
    if tab(i) > limite
        nbDessus = nbDessus + 1:
        moy.moyenneDessus = moy.moyenneDessus + tab(i);
    end
    
    if tab(i) < limite
        nbDessous = nbDessous + 1:
        moy.moyenneDessous = moy.moyenneDessous + tab(i);
    end
end

moy.moyenneDessus = moy.moyenneDessus / nbDessus;
moy.moyenneDessous = moy.moyenneDessous / nbDessous;