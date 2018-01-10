%Compteur avec depassement

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Initialise le compteur.
compteur = 0;

% Saisit la valeur limite.
limite = input('Entrez une valeur limite: ');

while(compteur <= limite)
    % Incrémente de 2 à chaque itération.
    compteur = compteur + 2;
    
    % Affiche l'état du compteur.
    fprintf('%i\n', compteur);
end
