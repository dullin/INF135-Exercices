function [maximum] = maximumDeTrois(nb1, nb2, nb3)
% Le nombre maximum entre trois nombres.
%
% Args:
%   nb1 (double): Première valeur a comparer.
%   nb2 (double): Seconde valeur a comparer.
%   nb3 (double): Troisième valeur à comparer.
% Returns:
%   double: La valeur maximum entre les trois nombres.
%
% Exemple:
%   ::
%
%       >> maximumDeTrois(3, 5, 2)
%         ans =
%              5
%
%   ::
%
%       >> maximumDeTrois(34, 34, 34)
%         ans =
%              34
%
%   ::
%
%       >> maximumDeTrois(34, 5, 34)
%         ans =
%              34
%

% Utilise la fonction précédente pour simplifier le problème.
maximum = maximumDeDeux(maximumDeDeux(nb1,nb2), nb3);
end
