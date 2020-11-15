% Utilise un while pour incrémenté un valeur de 1 jusqu'à 10. Affiche
% seulement les valeurs impaires du compteur. Note : La fonction mod permet
% d'aider à déterminer si un nombre est impair.
%
% Example:
%   ::
%
%       >> compteurImpaire
%       1
%       3
%       5
%       7
%       9
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Initialise le compteur.
compteur = 1;

% Répète jusqu'à ce que le compteur dépasse 10.
while(compteur <= 10)
    % Test is le nombre est impaire.
    % Note: On utilise le fait que mod(x,2) va toujours donné 0 ou 1. Les
    % même résultat que des valeurs logique.
    if mod(compteur,2)
        % Si impaire, affiche le nombre.
       fprintf('%i\n',compteur);
    end

    % Incrément le compteur.
    compteur= compteur+1;
end
