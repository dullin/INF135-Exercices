function [estIdent] = estMatriceIdentite(mat)
% Détermine si une matrice est identité. Une matrice identité est une
% matrice carrée avec des 1 sur la diagonale et des 0 partout ailleurs.
%
% Args:
%   mat (double): Matrice à identifier.
%
% Returns:
%   logical: `true` si la matrice est identité. `false` autrement.
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

% Prémise que la matrice est identité.
% Esseye de prouver le contraire.
estIdent = true;

% Matrice doit être carré.
[nLigne, nColonne] = size(mat);
if nLigne ~= nColonne
    estIdent = false;
    return
end

for iLigne = 1:nLigne
    for iColonne = 1:nColonne
        % Diagonale doit être des 1.
        if iLigne == iColonne
            if mat(iLigne, iColonne) ~= 1
                estIdent = false;
                return
            end
        else
            % Reste doit être 0.
            if mat(iLigne, iColonne) ~= 0
                estIdent = false;
                return
            end
        end
    end
end

end

