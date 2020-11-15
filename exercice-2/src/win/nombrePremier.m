% Saisit un nombre et affiche si ce nombre est premier. Un nombre premier
% à seulement 1 et lui-même comme diviseur. L'affichage prendre la forme
% "NOMBRE est premier" ou "NOMBRE pas premier."
%
% Example:
%   ::
%
%         >> nombrePremier
%         Le nombre a regarder : 17
%         17 est premier.
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

saisie = input('Le nombre a regarder : ');

% Suppose un nombre premier
estPremier = 1;

% Test tous les nombre autres que 1 et le nombre saisi.
for i=2:saisie-1
    % Test si le nombre est un diviseur.
    if ~mod(saisie,i)
        % Le nombre n'est pas premier si on trouve un diviseur.
        estPremier = 0;
    end
end

% Affiche si le nombre est premier ou pas.
if estPremier
    fprintf('%g est premier.\n', saisie)
else
    fprintf('%g n''est pas premier.\n', saisie)
end
