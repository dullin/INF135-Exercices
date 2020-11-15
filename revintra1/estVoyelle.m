function [voyelle] = estVoyelle(lettre)
    lettre = upper(lettre);
    
    voyelle = (lettre == 'A' || lettre == 'E' || ...
                    lettre == 'I' || lettre == 'O' || ...
                    lettre == 'U' || lettre == 'Y');
end

