% Utilise deux boucles for imbriqués l'une dans l'autre. La boucle externe
% va de 1 à 100 par saut de 2. La boucle interne va du compteur de la
% première boucle à 100 par saut de deux. Affiche les valeur du compteur de
% la boucle interne.

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Première boucle de 1 a 100, par incrément de 2.
for i=1:2:100   
    % Deuxième boucle de ii a 100, par incrément de 2.
    for j=i:2:100
        % Affiche le compteur de seconde boucle.
        fprintf('%g ',j);
    end
    fprintf('\n');
end
