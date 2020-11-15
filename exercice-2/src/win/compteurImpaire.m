% Utilise un while pour incr�ment� un valeur de 1 jusqu'� 10. Affiche
% seulement les valeurs impaires du compteur. Note : La fonction mod permet
% d'aider � d�terminer si un nombre est impair.
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

% Vide la fen�tre de commande et la m�moire.
clc
clear

% Initialise le compteur.
compteur = 1;

% R�p�te jusqu'� ce que le compteur d�passe 10.
while(compteur <= 10)
    % Test is le nombre est impaire.
    % Note: On utilise le fait que mod(x,2) va toujours donn� 0 ou 1. Les
    % m�me r�sultat que des valeurs logique.
    if mod(compteur,2)
        % Si impaire, affiche le nombre.
       fprintf('%i\n',compteur);
    end

    % Incr�ment le compteur.
    compteur= compteur+1;
end
