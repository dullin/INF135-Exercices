function [vec] = rempliVecteur(taille, valeur)
% Créé et rempli un tableau de taille déterminée avec les cases tous à la
% valeur voulue.
%
% Args:
%   taille (double): Taille du tableau à retourner.
%   valeur (double): Valeur à assigner dans chaque case.
%
% Returns:
%   (double): Tableau de la taille donnée avec la valeur assignée
%   dans chaque cases.
%
% Example:
%   ::
%
%       >> rempliVecteur(5, 12)
%         ans =
%             12    12    12    12    12
%
%   ::
%
%       >> rempliVecteur(2, 2)
%         ans =
%              2     2
%

% Alloue le vecteur à la bonne taille.
vec = zeros(1, taille);

% Rempli avec un boucle.
for i=1:taille
    vec(i) = valeur;
end

end

