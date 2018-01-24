function [max] = E6MaximumDeDeux(nb1, nb2)
% E6MaximumDeDeux - Maximum entre deux nombres.
% Retourne le nombre maximum entre deux nombres.
%
% Syntaxe : [max] = E6MaximumDeDeux(nb1, nb2)
%
% Entrées :
%   nb1 [double] - Première valeur a comparer.
%   nb2 [double] - Seconde valeur a comparer.
%
% Sorties :
%   max [double] - La valeur maximum entre les deux nombres.
%
% Example :
%   E6MaximumDeDeux(3,5) %% Retourne 5
%   E6MaximumDeDeux(34,34) %% Retourne 34
%

% Trouve le plus grand nombre.
if (nb1 > nb2)
    max = nb1;
else
    max = nb2;
end

end
