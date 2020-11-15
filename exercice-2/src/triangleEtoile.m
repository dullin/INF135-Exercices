% Saisit un nombre et affiche à l'écran un triangle rectangle composé
% d'etoiles dont la base et la hauteur correspondent au nombre saisit.
%
% Example:
%   ::
%
%         >> triangleEtoile
%         Veuillez entrer la taille du triangle d'étoiles: 5
%         *
%         **
%         ***
%         ****
%         *****
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit le nombre entier.
nEtoiles = input('Veuillez entrer la taille du triangle d''étoiles: ');

% Pour chaque ligne.
for iLigne = 1:nEtoiles
    % Affiche le bon nombre d'étoiles.
    for iEtoile = 1:iLigne
        fprintf('*');
    end
    % Saute une ligne après les étoiles.
    fprintf('\n');
end
