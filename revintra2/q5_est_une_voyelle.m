function [ est_voyelle ] = q5_est_une_voyelle( lettre )
    lettre = upper(lettre);
    
    est_voyelle = (lettre == 'A' || lettre == 'E' || ...
                    lettre == 'I' || lettre == 'O' || ...
                    lettre == 'U' || lettre == 'Y');
end

