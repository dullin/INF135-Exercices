function [premier] = estPremier(n)
% Détermine si le nombre est premier.
% Retourne `true` si le nombre est premier, `false` autrement.
%
% Args:
%   n (double): Le nombre à tester.
% Returns:
%   double: `true` si le nombre est premier.
%
% Exemple:
%   ::
%
%       >> estPremier(4)
%         ans =
%           logical
%            0
%
%   ::
%       
%       >> estPremier(7)
%         ans =
%           logical
%            1
%

% Test des cas particuliers.
if (n == 2)
    premier = true;
elseif (n == 1 || mod(n, 2) == 0)
    premier = false;
else
    % Suppose que le nombre est premier.
    premier = true;
    
    % Vérifie tous les diviseurs impairs entre 2 et sqrt(n).
    % Note : une propriété mathématique nous permet de tester jusqu'à
    % sqrt(n) pour augmenté la rapidité de la fonction.
    racineN = sqrt(n);
    indice = 3;
    while (indice <= racineN && premier == true)
        % Si on trouve un diviseur, alors il n'est pas premier.
        if (mod(n, indice) == 0)
            premier = false;
        end
        %Saut de 2 pour sauter le prochain nombre pair.
        indice = indice + 2;
    end
end
end
