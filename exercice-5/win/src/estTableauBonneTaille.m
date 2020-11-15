function [valide] = estTableauBonneTaille(taille, tableau)
% D�termine si un tableau est d'une taille donn�e. La taille doit �tre
% entre 0 et 100.
%
% Note:
%   **Validation**:
%
%   * `taille` est un entier.
%   * `taille` est entre 0 et 100 inclusivement.
%
% Args:
%   taille (1x1 double): La taille du tableau � valider.
%   tableau (1xn double): Le tableau dont on valide la taille.
% Returns:
%   logical: Si le tableau re�ue est de la taille donn�e.
% Example:
%   ::
%
%       >> estTableauBonneTaille(4, [4 2 5 1])
%         ans =
%           logical
%            1
%
%   ::
%
%       >> estTableauBonneTaille(-3, [3 5])
%         Error using estTableauBonneTaille (line 30)
%         Taille dans les mauvaise bornes.
%

% Valide que la taille est un entier.
assert(taille == fix(taille), 'La taille n''est pas un entier.');
% Valide que la taille est entre les bonnes bornes
assert(taille >= 0 && taille <= 100, 'Taille dans les mauvaise bornes.');	

% V�rifie la taille du tableau
valide = numel(tableau) == taille;
	
end


