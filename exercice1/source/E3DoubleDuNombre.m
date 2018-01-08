% Demande à l’utilisateur de saisir un nombre, le script affiche ensuite
% le double (multiplication par 2) du nombre. L'affichage prends la forme
% "Double du nombre : NOMBRE" suivi d'un saut de ligne.

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisis du nombre.
nbSaisi = input('Entrez un nombre: ');

%Affiche le double du nombre saisie
fprintf('Double du nombre : %g\n', 2 * nbSaisi)
