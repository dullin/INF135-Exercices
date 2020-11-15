function [ nb_sup,moyenne ] = q12_nb_val_sup( tableau,limite )
    somme = 0;
    nb_sup = 0;
    moyenne = 0;

    for i=1:numel(tableau)
        if (tableau(i) >= limite)
            nb_sup = nb_sup + 1;
            somme = somme + tableau(i);
        end
    end

    if (nb_sup > 0)
        moyenne = somme / nb_sup;
    end
end
