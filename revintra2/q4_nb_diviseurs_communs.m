function [ nb_diviseurs ] = q4_nb_diviseurs_communs( nb1, nb2 )
    if (nb1 < nb2)
        minimum = nb1;
    else
        minimum = nb2;
    end
    
    nb_diviseurs = 1;
    
    for compteur=2:minimum
        if(mod(nb1,compteur) == 0 && mod(nb2,compteur) == 0)
            nb_diviseurs = nb_diviseurs+1;
        end
    end
end

