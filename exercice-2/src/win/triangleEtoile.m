% Saisit un nombre et affiche � l'�cran un triangle rectangle compos�
% d'etoiles dont la base et la hauteur correspondent au nombre saisit.
%
% Example:
%   ::
%
%         >> triangleEtoile
%         Veuillez entrer la taille du triangle d'�toiles: 5
%         *
%         **
%         ***
%         ****
%         *****
%

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Saisit le nombre entier.
nEtoiles = input('Veuillez entrer la taille du triangle d''�toiles: ');

% Pour chaque ligne.
for iLigne = 1:nEtoiles
    % Affiche le bon nombre d'�toiles.
    for iEtoile = 1:iLigne
        fprintf('*');
    end
    % Saute une ligne apr�s les �toiles.
    fprintf('\n');
end
