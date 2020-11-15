function [produit] = produitCumulatif(tableau)
% Produit cumulatif des valeurs d'un tableau.
%
% Args:
%   tableau (double): Tableau auquel on trouve le produit.
%
% Returns:
%   (double): Produit cumulatif des valeurs.
%
% Example:
%   ::
%
%       >> produitCumulatif([1, 2, 3])
%         ans =
%              6
%
%   ::
%
%       >> produitCumulatif([12, 5, 7, 2])
%         ans =
%            840
%

% Produit cumulatif des éléments du tableau.
produit = 1;
for indice = 1:numel(tableau)
    produit = produit * tableau(indice);
end

end

