function [moy, max] = moyenneEtMaximum(tab)
% Moyenne et maximum d'un tableau.
%
% Args:
%   tab (double): Tableau d'origine.
%
% Returns:
%   Multiples retours:
%   
%   * (double): Moyenne du tableau.
%   * (double): Maximum du tableau.
%
% Example:
%   ::
%
%         >> [moy, max] = moyenneEtMaximum([9, 10, 2, 10, 7])
%         moy =
%             7.6000
%         max =
%             10
%

somme = 0;
max = tab(1);
% Parcourt le tableau.
for i = 1:numel(tab)
    somme = somme + tab(i);
    % Identifie la somme.
    if tab(i) > max
        max = tab(i);
    end
end

moy = somme / numel(tab);

end
