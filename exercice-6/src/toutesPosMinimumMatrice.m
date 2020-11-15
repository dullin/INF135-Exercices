function [listePos] = toutesPosMinimumMatrice(mat)
% Position du minimum. La position est un vecteur avec la position de la
% ligne et la colonne de la valeurs minimum d'une matrice. Permet de
% trouver plusiseurs position si le minimum est à plusieurs positions.
%
% Args:
%   mat (double): Matrice à parcourir.
%
% Returns:
%   double (nx2): Vecteur de deux colonnes indiquant chaque position en
%   ligne et colonne de la valeur minimum de la matrice. Chaque position
%   prends une ligne.
%
% Example:
%   ::
%
%         >> toutesPosMinimumMatrice([1, 5, 6;1, 3, 7])
%         ans =
%              1     1
%              2     1
%

% Position utilisé dans la liste de position.
POSITION_LIGNE = 1;
POSITION_COLONNE = 2;

%Trouve le minimum de la matrice.
min_tab = min(min(mat));

listePos = [];
% Parcours la matrice.
for ligne = 1:size(mat, 1)
    for colonne = 1:size(mat, 2)
        % Ajoute les positions du minimum par accumulation.
        if mat(ligne,colonne) == min_tab
            pos(POSITION_LIGNE) = ligne;
            pos(POSITION_COLONNE) = colonne;
            listePos = [listePos;pos];
        end
    end
end

end

