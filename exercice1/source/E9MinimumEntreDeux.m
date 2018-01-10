% Demande à l'utilisateur de saisir deux nombres. Le script affiche ensuite
% le plus petit des deux nombres. L'affichage prends la forme "Plus petit :
% NOMBRE" suivi d'un saut de ligne.
 
% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit les deux nombres.
nb1 = input('Veuillez entrer un premier nombre: ');
nb2 = input('Veuillez entrer un second nombre: ');

% Trouve le plus petit des deux nombres.
if (nb1 < nb2)
    min = nb1;
else
    min = nb2;
end

% Affiche le plus petit des deux nombres.
fprintf('Plus petit : %g\n', min)
