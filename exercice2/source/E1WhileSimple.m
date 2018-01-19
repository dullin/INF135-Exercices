% Initialise un compteur à 0. Avec une boucle while, la boucle while
% incrémente le compteur tant que la valeur est plus petite que 10. Affiche
% le compteur après la boucle.

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Initialise le compteur.
compteur = 0;

% Incrémente de 1 le compteur à chaque itération jusqu'à 10.
while(compteur < 10)
    compteur = compteur+1;
end

% Affiche la valeur finale.
fprintf('Valeur finale : %g\n', compteur);
