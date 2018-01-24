function [max] = E6MaximumDeTrois(nb1, nb2, nb3)
% E6MaximumDeTrois - Maximum entre trois nombres.
% Retourne le nombre maximum entre trois nombres.
%
% Syntaxe : [max] = E6MaximumDeTrois(nb1, nb2, nb3)
%
% Entrées :
%   nb1 [double] - Première valeur à comparer.
%   nb2 [double] - Seconde valeur à comparer.
%   nb3 [double] - Troisième valeur à comparer.
%
% Sorties :
%   max [double] - La valeur maximum entre les trois nombres.
%
% Example :
%   E6MaximumDeTrois(3,5,2) %% Retourne 5
%   E6MaximumDeTrois(34,34,34) %% Retourne 34
%   E6MaximumDeTrois(34,45,34) %% Retourne 45
%   E6MaximumDeTrois(34,5,34) %% Retourne 34
%


% Utilise la fonction précédente pour simplifier le problème.
max = E6MaximumDeDeux(E6MaximumDeDeux(nb1,nb2), nb3);
end
