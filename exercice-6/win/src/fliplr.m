function [mat] = fliplr(mat)
% Impl�menatation de la fonction `fliplr` de MATLAB. R�flection verticale
% d'une matrice. Inverse les colonnes autour de son milieu.
%
% Args:
%   mat (double): Matrice d'origine.
%
% Returns:
%   double: Matrice avec les colonnes invers�es.
% Example:
%   ::
%
%         >> fliplr([1 2 3; 4 5 6])
%         ans =
%              3     2     1
%              6     5     4
%

[nLigne, nColonne] = size(mat);
% Parcourt les lignes.
for i = 1:nLigne
    % Fait les inversions sur la moiti� des colonnes.
    for j = 1:nColonne/2
        temp = mat(i,j);
        mat(i,j) = mat(i, nColonne - j + 1);
        mat(i, nColonne - j + 1) = temp;
    end
end
        
        
end
