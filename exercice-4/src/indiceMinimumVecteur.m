function [minimum, indice] = indiceMinimumVecteur(vec)
% Valeur minimum du vecteur et l'indice de sa position. Retourne un seul
% indice même si plusieurs valeurs minimum existe.
%
% Args:
%   vec (double): Vecteur à parcourir.
%
% Returns:
%   Multiple Retour:
%   * minimum (double): Valeur minimum du vecteur.
%   * indice (doube): Indice de la position de la valeur minimum.
%
% Example :
%   ::
%
%       >> [minimum, indice] = indiceMinimumVecteur([14, 12, 7])
%         minimum =
%              7
%         indice =
%              3
%
%   ::
%
%       >> [minimum, indice] = indiceMinimumVecteur([8, 3, 12])
%         minimum =
%              3
%         indice =
%              2
%

% Utilise la première valeur comme minimum local.
minimum = vec(1);
indice = 1;
% Parcourt le reste du vecteur.
for i=2:numel(vec)
    % Recherche un nouveau minimum local.
    if minimum > vec(i)
        % Prend la nouvelle valeur minimum et son indice.
        minimum = vec(i);
        indice = i;
    end
end


end

