function [n] = nConsonnes(phrase)
    n = 0;
    
    phrase = upper(phrase);
    
    for compteur =1 :numel(phrase)
        caractere_courant = phrase(compteur);
        
        if (caractere_courant >= 'A' && ...
              caractere_courant <= 'Z' && ...
              ~estVoyelle(caractere_courant))
          n = n + 1;
        end
    end
end

