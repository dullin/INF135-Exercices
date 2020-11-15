function [minimum] = minimumVecteur(vec)
% Valeur minimum d'un vecteur.
%
% Args:
%   tableau (double): Vecteur à parcourir.
%
% Returns:
%   (double): La valeur minimum du vecteur.
%
% Example:
%   ::
%
%       >> minimumVecteur([23 76 17])
%         ans =
%             17
%
%   ::
%
%       >> minimumVecteur([44 44 44])
%         ans =
%             44
%

% Utilise la première valeur comme minimum local.
minimum = vec(1);
% Parcourt le reste du tableau.
for i=2:numel(vec)
    % Regarde si la nouvelle valeur est plus petite.
    if minimum > vec(i)
        % Prends la nouvelle valeur minimum.
        minimum = vec(i);
    end
end

end

