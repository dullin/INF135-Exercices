function [difference] = diffEntreMaxMin(tableau)
% Différence entre la valeur maximum et la valeur minimum d'un
% tableau.
%
% Args:
%   tableau (double): Tableau à parcourir.
%
% Returns:
%   (double): Différence entre le maximum et minimum du tableau.
%
% Example :
%   ::
%
%       >> diffEntreMaxMin([4, 12, 64, 55])
%         ans =
%             60
%
%   ::
%
%       >> diffEntreMaxMin([2, 1])
%         ans =
%              1
%

% Utilise la première valeur comme minimum et maxium local.
minimum = tableau(1);
maximum = tableau(1);
% Parcourt le tableau.
for indice = 1:numel(tableau)
    % Recherche un nouveau minimum ou maximum locaux.
    if (tableau(indice) < minimum)
        minimum = tableau(indice);
    elseif (tableau(indice) > maximum)
        maximum = tableau(indice);
    end
end

% Différence entre le maximum et minium du tableau.
difference = maximum - minimum;

end

