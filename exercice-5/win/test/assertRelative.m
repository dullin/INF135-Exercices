function assertRelative(actual, expected, tolerance)
% G�n�re une erreur entre une valeur actuelle et une valeur attendue.
% Utilise un taux de tol�rance de la valeur attendue. Le message d'erreur
% g�n�r� indique la valeur actuelle vs attendue.
%
% Args:
%   actual (1x1 double): La valeur actuelle � tester.
%   expected (1x1 double): La valeur attendue.
%   tolerance (1x1 double): La taux de tol�rance � avoir par rapport � la
%   valeur attendue.
%
% Note:
%   `tolerance` est facultatif. 0.1% est utilis� si la tol�rance n'est pas
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

% Tol�rance � 0.1% par d�faut.
if nargin ~= 3
    tolerance = 0.0001;
end

% Test de la diff�rence absolue relative � la valeur attendue.
assert(abs(actual - expected) < expected * tolerance, ...
    ['Expected : ' num2str(expected) ' Got : ' num2str(actual)])

end

