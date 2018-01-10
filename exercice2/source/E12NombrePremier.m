%determinee si un nombre est premier.

% Vide la fenêtre de commande et la mémoire.
clc
clear

nombre = input('Le nombre a regarder : ');

% on suppose que le nombre est premier en partant
resultat = 1;


% lance la boucle
for ii=2:nombre-1
    
    % sera vrai s'il s'agit d'un diviseur.
    if ~mod(nombre,ii)
        
        % le nombre n'est pas premier, ajuste le parametre de retour
        resultat = 0;
        
    end
    
    
    
end

%On affiche si le nombre est premier ou pas
if resultat
    fprintf('Le nombre est premier\n')
else
    fprintf('Le nombre n''est pas premier\n')
end
