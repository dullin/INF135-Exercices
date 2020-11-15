function [matT] = transposeMatrice(mat)
% Impl�mentation de la fonction `tranpose`. Transpos� de la matrice,
% r�flexion sur la diagonale de la matrice.
%
% Args:
%   mat (double): Matrice d'origine.
%
% Returns:
%   double: Matrice transpos�e.
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

% Matrice vide � �tre rempli.
matT = zeros(nColonne, nLigne);

% Remplie la matrice r�sultante.
for i = 1:nLigne
    for j = 1:nColonne
        matT(j, i) = mat(i, j);
    end
end

end

