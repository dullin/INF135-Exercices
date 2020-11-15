% Utilise deux boucles for imbriqués l'une dans l'autre. La boucle externe
% va de 1 à 20 par saut de 2. La boucle interne va du compteur de la
% première boucle à 20 par saut de deux. Affiche les valeur du compteur de
% la boucle interne. Affiche un saut de ligne à chaque itération de la
% boucle externe.
%
% Example:
%   ::
%
%       >> forImbrique
%       1 3 5 7 9 11 13 15 17 19 
%       3 5 7 9 11 13 15 17 19 
%       5 7 9 11 13 15 17 19 
%       7 9 11 13 15 17 19 
%       9 11 13 15 17 19 
%       11 13 15 17 19 
%       13 15 17 19 
%       15 17 19 
%       17 19 
%       19
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Première boucle de 1 a 100, par incrément de 2.
for i=1:2:20   
    % Deuxième boucle de ii a 100, par incrément de 2.
    for j=i:2:20
        % Affiche le compteur de seconde boucle.
        fprintf('%g ',j);
    end
    fprintf('\n');
end
