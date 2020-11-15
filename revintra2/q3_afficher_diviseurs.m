valeur_lue = input('Entrez une valeur : ');

for compteur = 1:valeur_lue
    if (mod(valeur_lue, compteur) == 0)
        fprintf('%g\n', compteur);
    end
end

