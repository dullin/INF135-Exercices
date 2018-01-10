%Compteur avec borne

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit le maximum, minimum et l'intervalle.
minimum = input('Entrez le minimum: ');
maximum = input('Entrez le maximum: ');
interval = input('Entrez le interval: ');

% Initialise le compteur au minimum.
compteur = minimum;

while(compteur <= maximum)
    % Affiche l'état du compteur.
    fprintf('%g\n', compteur);
    % additionne l'interval
    compteur = compteur+interval;
end
