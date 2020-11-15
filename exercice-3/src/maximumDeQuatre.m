function [maximum] = maximumDeQuatre(nb1, nb2, nb3, nb4)
% Le nombre maximum entre quatrew nombres.
%
% Args:
%   nb1 (double): Première valeur a comparer.
%   nb2 (double): Seconde valeur a comparer.
%   nb3 (double): Troisième valeur à comparer.
%   nb4 (double): Quatrième valeur à comparer.
% Returns:
%   double: La valeur maximum entre les quatre nombres.
%
% Exemple:
%   ::
%
%       >> maximumDeQuatre(3, 5, 2, 1)
%         ans =
%              5
%
%   ::
%
%       >> maximumDeTrois(34, 34, 34, 34)
%         ans =
%              34
%
%   ::
%
%       >> maximumDeTrois(34, 5, 34, 45)
%         ans =
%              45
%

% Utilise la fonction précédente pour simplifier le problème.
maximum = maximumDeDeux(maximumDeDeux(nb1, nb2), maximumDeDeux(nb3, nb4));

end
