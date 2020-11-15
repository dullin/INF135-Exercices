function [moy] = q2_moyenneLocale(tab,initLigne, ...
    initColonne)
moy = 0;
nbCases = 0;
for ligne = initLigne-1:initLigne+1
    for colonne = initColonne-1:initColonne+1
        if ligne >= 1 && ligne <= size(tab,1) && ...
                colonne >= 1 && colonne <= size(tab,2)
            nbCases = nbCases + 1;
            moy = moy + tab(ligne,colonne);
        end
    end
end
moy = moy / nbCases;
end
