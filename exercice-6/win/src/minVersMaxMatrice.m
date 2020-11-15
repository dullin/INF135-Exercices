function [mat] = minVersMaxMatrice(mat)
% Modifie les minimum d'une matrice en maximum.
%
% Args:
%   mat (double): Matrice d'origine.
%
% Returns:
%   (double): Matrice avec les cases de valeurs minimums modifié à la
%   valeur maximum.
%
% Example:
%   ::
%
%         >> minVersMaxMatrice([5 2 7 3; 2 7 9 2])
%         ans =
%              5     9     7     3
%              9     7     9     9
%

listePos = toutesPosMinimumMatrice(mat);
maxVal = max(max(mat));
mat = modifierMatrice(mat, listePos, maxVal);
end

