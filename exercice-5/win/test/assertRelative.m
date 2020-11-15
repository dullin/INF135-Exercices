function assertRelative(actual, expected, tolerance)
% Génère une erreur entre une valeur actuelle et une valeur attendue.
% Utilise un taux de tolérance de la valeur attendue. Le message d'erreur
% généré indique la valeur actuelle vs attendue.
%
% Args:
%   actual (1x1 double): La valeur actuelle à tester.
%   expected (1x1 double): La valeur attendue.
%   tolerance (1x1 double): La taux de tolérance à avoir par rapport à la
%   valeur attendue.
%
% Note:
%   `tolerance` est facultatif. 0.1% est utilisé si la tolérance n'est pas
%   fourni.
%
% Example:
%   ::
%
%         >> assertRelative(sin(1.2), 0.932)
%         >>
%
%   ::
%
%         >> ssertRelative(abs(-1.5), 2)
%         Error using assertRelative (line 29)
%         Expected : 2 Got : 1.5
%

% Tolérance à 0.1% par défaut.
if nargin ~= 3
    tolerance = 0.0001;
end

% Test de la différence absolue relative à la valeur attendue.
assert(abs(actual - expected) < expected * tolerance, ...
    ['Expected : ' num2str(expected) ' Got : ' num2str(actual)])

end

