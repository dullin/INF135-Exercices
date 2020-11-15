% Demande � l'utilisateur de saisir un nombre, le script affiche ensuite le
% nombre au carr� (multipli� par lui-m�me). L'affichage prends la forme
% "Carr� du nombre : NOMBRE" suivi d'un saut de ligne.
% 
% Example:
%   ::
%
%       >> carreDuNombre
%       Entrez un nombre: 54
%       Carr� du nombre : 2916
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Saisit le nombre.
nombrebSaisi = input('Entrez un nombre: ');

% Affiche le carr� du nombre saisi.
fprintf('Carr� du nombre : %g\n',nombrebSaisi^2)
