function q2_afficher_chiffre( )
    valeur_lue = input('Entrez une valeur : ');
    
    if (valeur_lue == 0)
        fprintf('0');
    end
    
    while (valeur_lue > 0)
        fprintf('%g\n',mod(valeur_lue, 10));
        valeur_lue = fix(valeur_lue / 10);
    end
end

