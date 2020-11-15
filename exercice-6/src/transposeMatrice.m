function [matT] = transposeMatrice(mat)
% Implémentation de la fonction `tranpose`. Transposé de la matrice,
% réflexion sur la diagonale de la matrice.
%
% Args:
%   mat (double): Matrice d'origine.
%
% Returns:
%   double: Matrice transposée.
%
% Example:
%   ::
%
%         >> transposeMatrice([1 2 3; 4 5 6])
%         ans =
%              1     4
%              2     5
%              3     6
%

[nLigne, nColonne] = size(mat);

% Matrice vide à être rempli.
matT = zeros(nColonne, nLigne);

% Remplie la matrice résultante.
for i = 1:nLigne
    for j = 1:nColonne
        matT(j, i) = mat(i, j);
    end
end

end

