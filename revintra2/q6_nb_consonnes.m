function [ nb_consonnes ] = q6_nb_consonnes( mot )
    nb_consonnes = 0;
    
    mot = upper(mot);
    
    for compteur =1 :numel(mot)
        car_courant = mot(compteur);
        
        if ( car_courant >= 'A' && ...
              car_courant <= 'Z' && ...
              ~q5_est_une_voyelle(car_courant) )
          nb_consonnes = nb_consonnes + 1;
        end
    end
end

