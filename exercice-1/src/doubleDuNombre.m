% Demande à l’utilisateur de saisir un nombre, le script affiche ensuite
% le double (multiplication par 2) du nombre. L'affichage prends la forme
% "Double du nombre : NOMBRE" suivi d'un saut de ligne.
% 
% Example:
%   ::
%
%       >> doubleDuNombre
%       Entrez un nombre: 34
%       Double du nombre : 68
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit le nombre.
nombreSaisi = input('Entrez un nombre: ');

% Affiche le double du nombre saisi.
fprintf('Double du nombre : %g\n', 2 * nombreSaisi)
