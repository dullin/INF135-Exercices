function [mat] = modifierMatrice(mat, listePos, val)
% Modifie les valeurs d'une matrice � des positions donn�es par une
% nouvelle valeur.
%
% Args:
%   mat (double): La matrice d'origine � modifier;
%   listePos (nx2 double): Tableau de deux colonne indiquant des paires de
%   ligne et colonne � modifier.
%   val (double): La valeur � ins�r� aux positions re�ues.
%
% Returns:
%   double: La matrice modifi� aux endroits re�ues par la valeur donn�e.
%
% Example:
%   ::
%
%         >> mat = eye(5);
%         >> modifierMatrice(mat, [1 1; 4 5; 3 4], 100)     
%         ans =
%            100     0     0     0     0
%              0     1     0     0     0
%              0     0     1   100     0
%              0     0     0     1   100
%              0     0     0     0     1
%

% Parcourt la liste de positions.
for i=1:size(listePos, 1)
    % Pour chaque, position, applique la modification.
    mat(listePos(i, 1), listePos(i, 2)) = val;
end

end

