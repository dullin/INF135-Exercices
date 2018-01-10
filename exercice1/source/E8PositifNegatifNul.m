% Demande à l'utilisateur de saisir un nombre. Le script affiche si le
% nombre est positif, négatif ou nul. L'affichage prends la forme "Le
% nombre est positif.", "Le nombre est négatif." ou "Le nombre est nul."
% tous suivis d'un saut à la ligne.

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit le nombre.
nbSaisi = input('Entrez un nombre: ');

% Test la polarité du nombre et affiche le résultat.
if nbSaisi > 0
    fprintf('Le nombre est positif.\n')
elseif nbSaisi < 0
    fprintf('Le nombre est négatif.\n')
else
    fprintf('Le nombre est nul.\n')
end
