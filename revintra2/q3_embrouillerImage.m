function [ tabEmbrouiller ] = q3_embrouillerImage( tab )
tabEmbrouiller = zeros(size(tab,1),size(tab,2));
for ligne=1:size(tab,1)
    for colonne=1:size(tab,2)
        tabEmbrouiller(ligne,colonne) = ... 
            q2_moyenneLocale(tab, ligne, colonne);
    end
end
end
