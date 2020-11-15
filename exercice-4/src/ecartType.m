function [ecart] = ecartType(vec)
% L'écart type avec l'équation suivante :
%
% .. math::
%
%   \sqrt{\frac{n\sum(x^2)-(\sum{x})^2}{n(n-1)}}
%
% Args:
%   vec (double): Vecteur initial.
%
% Returns:
%   (double): L'écart-type des valeurs du vecteur.
%
% Example:
%   ::
%
%       >> ecartType([23, 54, 12])
%         ans =
%            21.7792
%
%   ::
%
%       >> ecartType([5, 5, 5, 5])
%         ans =
%              0
%

n = numel(vec);
% Somme des valeurs au carré.
sommeCarre = 0;
for indice = 1:n
    sommeCarre = sommeCarre + vec(indice) * vec(indice);
end

ecart = sqrt(((n * sommeCarre) - (sum(vec) ^ 2))/ (n*(n - 1)));

end
