function [somme] = trace(mat)
% Implémentation de la fonction `trace` de MATLAB. Somme de la diagonale de
% la matrice.
%
% Args:
%   mat (double): Matrice d'origine.
%
% Returns:
%   double: Somme de la diagonale.
%
% Example:
%   ::
%
%         >> trace([1 2 3; 4 5 6; 7 8 9])
%         ans =
%             15
%

somme = 0;
% Parcourt la diagonale
for i = 1:size(mat, 1)
    somme = somme + mat(i, i);
end

end

