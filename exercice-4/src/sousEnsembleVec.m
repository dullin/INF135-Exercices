function [sousVec] = sousEnsembleVec(vec, indMinimum, indMaximum)
% Sous-ensemble d'un vecteur contenant les cases se trouvant entre deux indice.
%
% Arg :
%   vec (double): Vecteur initial.
%   indMinimum (double): Indice minimum du sous-ensemble à faire.
%   indMaximum (double): Indice maximum du sous-ensemble à faire.
%
% Returns:
%   (double): Nouveau vecteur avec seulement les valeurs du
%   sous-ensemble.
%
% Example :
%   ::
%
%       >> sousEnsembleVec([1, 2, 3, 4, 5], 2, 4)
%         ans =
%              2     3     4
%
%   ::
%
%       >> sousEnsembleVec([23, 45, 76, 23, 76], 4, 5)
%         ans =
%             23    76
%

% Alloue le vecteur de retour.
nCases = indMaximum-indMinimum+1;
sousVec = zeros(1,nCases);

% Remplit le nouveau vecteur avec les cases entre les indices voulus.
for i = 1:nCases
    sousVec(i) = vec(indMinimum+i-1);
end

end

