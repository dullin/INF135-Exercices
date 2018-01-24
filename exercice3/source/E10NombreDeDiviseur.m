function nDiviseur = E10NombreDeDiviseur(n)
% E10NombreDeDiviseur - Nombre de diviseurs.
% Retourne le nombre de diviseurs de n.
%
% Syntaxe : [nb_diviseur] = E10NombreDeDiviseur(n)
%
% Entrées :
%   n [double] - Le nombre à tester.
%
% Sorties :
%   nDiviseur [double] - Le nombre de diviseurs du nombre.
%
% Example :
%   E10NombreDeDiviseur(200) %% Retourne 12
%

% Teste tous les diviseurs possibles.
% Inclus 1 automatique pour augmenter l'efficaciter de la fonction.
nDiviseur = 1;                
indice = 2;
while (indice <= n)
    if (mod(n, indice) == 0)
        nDiviseur = nDiviseur + 1;
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
