% Saisit un nombre minimum, un nombre maximum et un intervalle. Avec une
% boucle while, affiche tous les nombres entre le nombre minimum et le
% nombre maximum en utilisant des sauts de l'intervalle.

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit le maximum, minimum et l'intervalle.
minimum = input('Entrez le minimum : ');
maximum = input('Entrez le maximum : ');
intervalle = input('Entrez le intervalle : ');

% Initialise le compteur au minimum.
compteur = minimum;

while(compteur <= maximum)
    % Affiche l'état du compteur.
    fprintf('%g\n', compteur);
    % Somme cumulative de l'intérvale.
    compteur = compteur+intervalle;
end
