function [saisit] = E5SaisitEntreBorne(minimum, maximum)
% E5SaisitEntreBorne - Saisit entre les bornes.
% Fait la saisie d'une valeur et recommance tant que la saisit n'est pas à
% l'intérieur de bornes données.
%
% Syntaxe : [saisit] = E5SaisitEntreBorne(minimum, maximum)
%
% Entrées :
%   minimum [double] - La borne inférieure de l'intervalle de lecture.
%   maximum [double] - La borne supérieure de l'intervalle de lecture.
%
% Sorties :
%   saisit [double] - La valeur finalement saisit entre les bornes.
%
% Example :
%   E5SaisitEntreBorne(4, 10) %% Retourne entre 4 et 10
%

% Saisit le premier nombre.
saisit = input('Veuillez entrer une valeur : ');

% Tant qu'on dépasse une des bornes.
while (saisit < minimum || saisit > maximum)
    % Recommance la saisie.
    fprintf('La valeur doit se situer entre %d et %d.\n', minimum, maximum);
    saisit = input('Veuillez entrer une valeur : ');
end
end
