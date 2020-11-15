% Saisit la dimension d'un carré. Affiche un carré d'étoile (*) à l'écran
% avec un nombre de ligne et un nombre de colonnes déterminé par la saisit.
%
% Example:
%   ::
%
%         >> carreEtoile
%         Quel est la dimension du carre : 5
%         *****
%         *****
%         *****
%         *****
%         *****
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit la dimension du carre d'etoiles.
dimension = input('Quel est la dimension du carre : ');

% Pour chaque ligne.
for i=1:dimension
    % Affiche les étoiles d'une ligne.
    for j=1:dimension
        fprintf('*');
    end
    % Saut de ligne après chaque ligne d'étoiles.
    fprintf('\n');
end
