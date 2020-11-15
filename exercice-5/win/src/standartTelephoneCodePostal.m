function [chaine] = standartTelephoneCodePostal(chaine)
% Modifie une chaine en caractères pour enlever les '-' et ' ' (espace), et
% change toutes les minuscules pour des majuscules. Cette fonction est
% utilisée pour standardiser les numéros de téléphone et codes postaux
% entrés par des usagers.
%
% Args:
%   chaine (char): La chaine à standardiser.
%
% Returns:
%   char: La chaine avec les tirets et espaces d'enlevé.
%
% Example:
%   ::
%
%       >> standartTelephoneCodePostal('j3L 2X4')
%         ans =
%             'J3L2X4'
%

% Parcourt la chaine à partir de la fin pour ne pas accrocher les cases
% modifiés.
for i=numel(chaine):-1:1
    % Retire les "mauvais" caractères.
    if chaine(i) == '-' || chaine(i) == ' '
        chaine(i) = [];
    end
end

% Met le tout en majuscule.
chaine = upper(chaine);


end

