function [somme] = compteurEntreBorne(debut, fin)
% La somme en entre un borne minimale et une borne maximale.
% Ex : `debut + (debut+1) + ... + (fin-1) + fin`.
%
% Args:
%   debut (double): La valeur de départ de la sommation à faire.
%   fin (double): La valeur de fin de la sommation à faire.
% Returns:
%   double: La somme du compteur entre les bornes données.
%
% Exemple:
%   ::
%
%       >> compteurEntreBorne(10, 13) 
%           ans = 46
%
%   ::
%       
%       >> compteurEntreBorne(0, 7) 
%           ans = 28
%

% Calcule la somme cumulative.
somme = 0;
for i= debut : fin
    somme = somme + i;
end

% NOTE: Une autre réponse sans l'utilisation de la boucle.
% La légende dit que que l'équation fut trouvé par Carl Friedrich Gauss
% durant sont enfance.
% http://bit-player.org/wp-content/extras/gaussfiles/gauss-snippets.html
% reponse = (fin - debut + 1) * (debut + fin) / 2;

end
