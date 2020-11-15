% Demande � l'utilisateur de saisir un nombre. Le script affiche si le
% nombre est positif, n�gatif ou nul. L'affichage prends la forme "Le
% nombre est positif.", "Le nombre est n�gatif." ou "Le nombre est nul."
% tous suivis d'un saut � la ligne.
% 
% Example:
%   ::
%
%       >> positifNegatifNul
%       Entrez un nombre: -34
%       Le nombre est n�gatif.
%

% Vide la fen�tre de commande et la m�moire.
clear
clc

% Saisit le nombre.
nombreSaisi = input('Entrez un nombre: ');

% Test la polarit� du nombre et affiche le r�sultat.
if nombreSaisi > 0
    fprintf('Le nombre est positif.\n')
elseif nombreSaisi < 0
    fprintf('Le nombre est n�gatif.\n')
else
    fprintf('Le nombre est nul.\n')
end
