function [plusGrandDiviseur] = pgcd(a, b)
% Le plus grand commun diviseur entre deux nombre. Utilise
% l'algorithme suivant pour y arriver:
%
%   ::
%
%       tant que b diférent de 0
%           si a plus grand que b alors
%               a := a - b
%           sinon
%               b := b - a
%           fin si
%       fin tant que
%       résultat := a
%
% Le signe `:=` est une assignation en algorithmie.
%
% Args:
%   a (double): Première valeur.
%   b (double): Deuxième valeur.
% Returns:
%   double: Plus grand diviseur des deux nombres.
%
% Exemple:
%   ::
%
%       >> pgcd(12, 30)
%         ans =
%              6
%
%   ::
%
%       >> pgcd(8, 4)
%         ans =
%              4
%

% Utilise l'algorithme fourni pour trouver les plus grand diviseur.
while b ~= 0
    if a > b
        a = a - b;
    else
        b = b - a;
    end
end
plusGrandDiviseur = a;

end
