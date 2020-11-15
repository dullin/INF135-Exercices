function [mat] = rot90Matrice(mat)
% Implémente la fonction `rot90` de MATLAB. Rotation de 90 degrés
% anti-horaire de la matrice.
%
% Args:
%   mat (double): Matrice d'origine.
%
% Returns:
%   double: Matrice avec rotation de 90 degrés.
%
% Example:
%   ::
%
%         >> rot90Matrice([1 2 3; 4 5 6])
%         ans =
%              3     6
%              2     5
%              1     4
%

% Utilise les fonctions précédentes.
mat = flipud(transposeMatrice(mat));
end

