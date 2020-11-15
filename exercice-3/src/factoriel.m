function [fact] = factoriel(n)
% Factoriel de n. Retourne la somme multiplicative de 1 à n.
%
% Args:
%   n (double): La valeur pour laquelle on souhaite calculer le factoriel.
% Returns:
%   double: La somme multiplicative factoriel du nombre.
%
% Exemple:
%   ::
%
%       >> factoriel(5)
%         ans =
%            120
%

% Trouve la somme cummulative multiplicative de 1 à n.
fact = 1;
for indice = 2:n
    fact = fact * indice;
end
end
