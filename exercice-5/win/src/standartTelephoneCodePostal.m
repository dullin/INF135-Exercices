function [chaine] = standartTelephoneCodePostal(chaine)
% Modifie une chaine en caract�res pour enlever les '-' et ' ' (espace), et
% change toutes les minuscules pour des majuscules. Cette fonction est
% utilis�e pour standardiser les num�ros de t�l�phone et codes postaux
% entr�s par des usagers.
%
% Args:
%   chaine (char): La chaine � standardiser.
%
% Returns:
%   char: La chaine avec les tirets et espaces d'enlev�.
%
% Example:
%   ::
%
%       >> standartTelephoneCodePostal('j3L 2X4')
%         ans =
%             'J3L2X4'
%

% Parcourt la chaine � partir de la fin pour ne pas accrocher les cases
% modifi�s.
for i=numel(chaine):-1:1
    % Retire les "mauvais" caract�res.
    if chaine(i) == '-' || chaine(i) == ' '
        chaine(i) = [];
    end
end

% Met le tout en majuscule.
chaine = upper(chaine);


end

