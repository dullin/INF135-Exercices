% Saisit un nombre minimum, un nombre maximum et un intervalle. Avec une
% boucle while, affiche tous les nombres entre le nombre minimum et le
% nombre maximum en utilisant des sauts de l'intervalle.
%
% Example:
%   ::
%
%       >> compteurBorne
%       Entrez le minimum : 3
%       Entrez le maximum : 13
%       Entrez l'intervalle : 2
%       3
%       5
%       7
%       9
%       11
%       13
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit le maximum, minimum et l'intervalle.
minimum = input('Entrez le minimum : ');
maximum = input('Entrez le maximum : ');
intervalle = input('Entrez l''intervalle : ');

% Initialise le compteur au minimum.
compteur = minimum;

while(compteur <= maximum)
    % Affiche l'état du compteur.
    fprintf('%g\n', compteur);
    % Somme cumulative de l'intérvale.
    compteur = compteur+intervalle;
end
