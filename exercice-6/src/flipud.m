function [mat] = flipud(mat)
% Implémenatation de la fonction `flipud` de MATLAB. Réflection horizontale
% d'une matrice. Inverse les lignes autour de son milieu.
%
% Args:
%   mat (double): Matrice d'origine.
%
% Returns:
%   double: Matrice avec les lignes inversées.
% Example:
%   ::
%
%         >> flipud([1 2 3; 4 5 6])
%         ans =
%              4     5     6
%              1     2     3
%

[nLigne, nColonne] = size(mat);
% Parcourt les colonnes.
for j = 1:nColonne
    % Fait les inversions sur la moitié des lignes.
    for i = 1:nLigne/2
        temp = mat(i,j);
        mat(i,j) = mat(nLigne - i + 1, j);
        mat(nLigne - i + 1, j) = temp;
    end
end
        
        
end

