function [ prob_nb_6 ] = q9_probabilite_nb_6( nb_des )
    NB_ESSAIS = 10000;
    nb_succes = 0;
    
    for compteur=1:NB_ESSAIS
        if(q8_nombre_de_6(nb_des) >= 1)
            nb_succes = nb_succes +1;
        end
    end
    
    prob_nb_6 = nb_succes / NB_ESSAIS;
end

