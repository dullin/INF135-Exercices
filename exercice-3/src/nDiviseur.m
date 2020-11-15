function [diviseurs] = nDiviseur(n)
% Le nombre de diviseurs de n.
%
% Args:
%   n (double): Le nombre à tester.
% Returns:
%   double: Le nombre de diviseurs du nombre.
%
% Exemple:
%   ::
%
%       >> nDiviseur(45)
%         ans =
%              6
%
%   ::
%       
%       >> nDiviseur(8)
%         ans =
%              4
%

% Teste tous les diviseurs possibles.
% Inclus 1 automatique pour augmenter l'efficaciter de la fonction.
diviseurs = 1;                
indice = 2;
while (indice <= n)
    if (mod(n, indice) == 0)
        diviseurs = diviseurs + 1;
    end
    indice = indice + 1;
end

% Note : On pourrait résoudre le problème grâce à la fonction Phi
% d'Euler qui dit que le nombre de diviseurs d'un nombre
% est égal au produit des exposants + 1 de sa représentation
% en nombre premiers.
% Ex. : 200 = 2^3 * 5^2
%      Phi(200) == 4 * 3 == 12 == nDiviseurs
end
