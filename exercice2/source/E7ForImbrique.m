%Exercice de base necessitant l'utilisation du for.                                                   *

% Vide la fenêtre de commande et la mémoire.
clc
clear

% premiere boucle de 1 a 100, par increment de 2
for ii=1:2:100
    
    % affiche le compteur de la premiere boucle
    %fprintf('ii= %i\n',ii);
    
    % premiere boucle de ii a 100, par increment de 2
    for jj=ii:2:100
        % affiche le compteur de la seconde boucle
        fprintf('%i ',jj);
    end
    
    % saute une ligne
    fprintf('\n');
end
