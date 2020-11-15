function [saisit] = saisitEntreBorne(minimum, maximum)
% Saisi une valeur et recommence tant que la saisit n'est pas à
% l'intérieur de bornes données.
%
% Args:
%   minimum (double): La borne inférieure de l'intervalle de saisi.
%   maximum (double): La borne supérieure de l'intervalle de saisi.
% Returns:
%   double: La valeur finalement saisit entre les bornes.
%
% Exemple:
%   ::
%
%       >> saisitEntreBorne(5, 10)
%         Veuillez entrer une valeur : 3
%         La valeur doit se situer entre 5 et 10.
%         Veuillez entrer une valeur : 12
%         La valeur doit se situer entre 5 et 10.
%         Veuillez entrer une valeur : 5
%         ans =
%              5
%

% Saisit le premier nombre.
saisit = input('Veuillez entrer une valeur : ');

% Tant qu'on dépasse une des bornes.
while (saisit < minimum || saisit > maximum)
    % Recommence la saisie.
    fprintf('La valeur doit se situer entre %d et %d.\n', minimum, maximum);
    saisit = input('Veuillez entrer une valeur : ');
end
end
