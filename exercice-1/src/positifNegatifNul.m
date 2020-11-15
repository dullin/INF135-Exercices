% Demande à l'utilisateur de saisir un nombre. Le script affiche si le
% nombre est positif, négatif ou nul. L'affichage prends la forme "Le
% nombre est positif.", "Le nombre est négatif." ou "Le nombre est nul."
% tous suivis d'un saut à la ligne.
% 
% Example:
%   ::
%
%       >> positifNegatifNul
%       Entrez un nombre: -34
%       Le nombre est négatif.
%

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit le nombre.
nombreSaisi = input('Entrez un nombre: ');

% Test la polarité du nombre et affiche le résultat.
if nombreSaisi > 0
    fprintf('Le nombre est positif.\n')
elseif nombreSaisi < 0
    fprintf('Le nombre est négatif.\n')
else
    fprintf('Le nombre est nul.\n')
end
