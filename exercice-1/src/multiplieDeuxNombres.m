% Demande à l'utilisateur de saisir deux nombres et affiche le produit des
% deux nombres. L'affichage prends la forme "NOMBRE1 x NOMBRE2 = PRODUIT"
% suivi d'un saut de ligne.
% 
% Example:
%   ::
%
%       >> multiplieDeuxNombres
%       Veuillez entrer un premier nombre: 345
%       Veuillez entrer un second nombre: 56
%       345 x 56 = 19320
%

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit les deux nombres.
operande1 = input('Veuillez entrer un premier nombre: ');
operande2 = input('Veuillez entrer un second nombre: ');

% Affiche le produit.
% Note: Les points de suspension (...) permet de poursuivre l'écriture
% d'une instruction sur les lignes suivantes.
fprintf('%g x %g = %g\n', ...
        operande1, ...
        operande2, ...
        operande1 * operande2 )
