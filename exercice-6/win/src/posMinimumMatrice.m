function [position] = posMinimumMatrice(mat)
% Position du minimum. La position est un vecteur avec la position de la
% ligne et la colonne de la valeurs minimum d'une matrice.
%
% Args:
%   mat (double): Matrice à parcourir.
%
% Returns:
%   double: Vecteur de deux cases indiquant la position en
%   ligne et colonne de la valeur minimum de la matrice.
%
% Example:
%   ::
%
%         >> posMinimumMatrice([2, 5, 6;1, 3, 7])
%         ans =
%              2     1
%

% Initialise un premier minimum.
min = mat(1);
position = [1 1];

% Parcourt le tableau.
for ligne = 1:size(mat, 1)
    for colonne = 1:size(mat, 2)
        % Trouve un nouveau minimum.
        if min > mat(ligne,colonne)
            min = mat(ligne,colonne);
            position = [ligne colonne];
        end
    end
end

end

