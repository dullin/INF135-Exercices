function [vec] = coupeValeurSeuilVec(vec, seuil)
% Coupe les valeurs par dessus le seuil. 
% Retounre un tableau contenant seulement les éléments qui sont plus petits
% ou égaux au seuil.
%
% Args:
%   vec (double): Vecteur initial.
%   seuil (double): Valeur seuil. Les valeurs plus grande seront
%   coupées.
%
% Returns:
%   (double): Vecteur des valeurs du vecteur initial plus
%   petits ou égales au seuil.
%
% Example:
%   ::
%
%       >> coupeValeurSeuilVec([23, 45, 25, 35, 66], 40)
%         ans =
%             23    25    35
%
%       >> coupeValeurSeuilVec([27, 34, 65, 3, 455, 10], 10)
%         ans =
%              3    10
%

% Parcourt le vecteur en inverse pour ne pas bousculer les valeurs à la
% coupure.
for i = numel(vec):-1:1
    % Si à l'intérieur du seuil.
    if(vec(i) > seuil)
        % Coupe la valeur.
        vec(i) = [];
    end
end

end

