function [max] = E6MaximumDeQuatre(nb1, nb2, nb3, nb4)
% E6MaximumDeQuatre - Maximum entre quatre nombres.
% Retourne le nombre maximum entre quatre nombres.
%
% Syntaxe : [max] = E6MaximumDeQuatre(nb1, nb2, nb3, nb4)
%
% Entrées :
%   nb1 [double] - Première valeur à comparer.
%   nb2 [double] - Seconde valeur à comparer.
%   nb3 [double] - Troisième valeur à comparer.
%   nb4 [double] - Quatrième valeur à comparer.
%
% Sorties :
%   max [double] - La valeur maximum entre les quatre nombres.
%
% Example :
%   E6MaximumDeQuatre(3,5,2,1) %% Retourne 5
%   E6MaximumDeQuatre(34,34,34,34) %% Retourne 34
%   E6MaximumDeQuatre(34,45,34,34) %% Retourne 45
%   E6MaximumDeQuatre(34,5,34,34) %% Retourne 34
%

% Utilise la fonction précédente pour simplifier le problème.
max = E6MaximumDeDeux(E6MaximumDeDeux(nb1,nb2),  E6MaximumDeDeux(nb3,nb4));

end
