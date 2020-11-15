function [estIdent] = estMatriceIdentite(mat)
% D�termine si une matrice est identit�. Une matrice identit� est une
% matrice carr�e avec des 1 sur la diagonale et des 0 partout ailleurs.
%
% Args:
%   mat (double): Matrice � identifier.
%
% Returns:
%   logical: `true` si la matrice est identit�. `false` autrement.
%
% Example:
%   ::
%
%         >> estMatriceIdentite([1 2; 3 4])
%         ans =
%           logical
%            0
%
%   ::
%
%         >> estMatriceIdentite([1 0 0; 0 1 0; 0 0 1])
%         ans =
%           logical
%            1
%

% Pr�mise que la matrice est identit�.
% Esseye de prouver le contraire.
estIdent = true;

% Matrice doit �tre carr�.
[nLigne, nColonne] = size(mat);
if nLigne ~= nColonne
    estIdent = false;
    return
end

for iLigne = 1:nLigne
    for iColonne = 1:nColonne
        % Diagonale doit �tre des 1.
        if iLigne == iColonne
            if mat(iLigne, iColonne) ~= 1
                estIdent = false;
                return
            end
        else
            % Reste doit �tre 0.
            if mat(iLigne, iColonne) ~= 0
                estIdent = false;
                return
            end
        end
    end
end

end

