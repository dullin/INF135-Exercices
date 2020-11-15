function [valide] = estVecEntier(vec1, vec2, vec3)
% V�rifie que les valeurs des trois vecteurs sont tous des entiers.
%
% Note:
%   **Validation**: Les trois vecteurs sont de m�me taille.
%
% Args:
%   vec1 (1xn double): Le premier vecteur.
%   vec2 (1xn double): Le deuxi�me vecteur.
%   vec3 (1xn double): Le troisi�me vecteur.
% Returns:
%   logical: Si les trois vecteurs contiennent seulement des entiers.
% Example:
%   ::
%
%       >> estVecEntier([45 22 45], [2 5 7], [3 1 4])
%         ans =
%           logical
%            1
%
%   ::
%
%       >> estVecEntier([45 22 45], [2 5.4 7], [3 1 4])
%         ans =
%           logical
%            0
%
%   ::
%
%       >> estVecEntier([45 22], [2 5 7], [1 4])
%         Error using estVecEntier (line 34)
%         Vecteurs de tailles diff�rentes
%


% Validation de la taille des tableaux.
assert(numel(vec1) == numel(vec2) && numel(vec2) == numel(vec3), ...
    'Vecteurs de tailles diff�rentes')

% Utilise la comparaison logique binaires avec la comparaison d'�galit� des
% tableau pour d�termin� si les trois vecteurs sont entiers.
valide = all(vec1 == fix(vec1) & ...
    vec2 == fix(vec2) & ...
    vec3 == fix(vec3));

end

