function [maximum] = maximumDeDeux(nb1, nb2)
% Le nombre maximum entre deux nombres.
%
% Args:
%   nb1 (double): Première valeur a comparer.
%   nb2 (double): Seconde valeur a comparer.
% Returns:
%   double: La valeur maximum entre les deux nombres.
%
% Exemple:
%   ::
%
%       >> maximumDeDeux(3, 5)
%         ans =
%              5
%
%   ::
%       
%       >> maximumDeDeux(34, 34)
%         ans =
%              34
%

% Trouve le plus grand nombre.
if (nb1 > nb2)
    maximum = nb1;
else
    maximum = nb2;
end

end
