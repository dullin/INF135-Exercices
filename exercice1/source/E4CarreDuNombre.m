% Demande à l'utilisateur de saisir un nombre, le script affiche ensuite le
% nombre au carré (multiplié par lui-même). L'affichage prends la forme
% "Carré du nombre : NOMBRE" suivi d'un saut de ligne.

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit le nombre.
nbSaisi = input('Entrez un nombre: ');

% Affiche le carré du nombre saisi.
fprintf('Carré du nombre : %g\n',nbSaisi^2)
