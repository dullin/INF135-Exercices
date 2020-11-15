% Saisit la dimension d'un carr�. Affiche un carr� d'�toile (*) � l'�cran
% avec un nombre de ligne et un nombre de colonnes d�termin� par la saisit.
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

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Saisit la dimension du carre d'etoiles.
dimension = input('Quel est la dimension du carre : ');

% Pour chaque ligne.
for i=1:dimension
    % Affiche les �toiles d'une ligne.
    for j=1:dimension
        fprintf('*');
    end
    % Saut de ligne apr�s chaque ligne d'�toiles.
    fprintf('\n');
end
