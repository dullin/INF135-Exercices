% Saisit un nombre limite. Initialise un compteur à 0 et utilise un while
% qui incrémente le compteur de deux à chaque itération. Le compteur
% s'arrète quand le compteur à dépassé le nombre limite. Affichez la valeur
% du compteur à la fin de chaque itération de la boucle.
%
% Example:
%   ::
%
%       >> whileDepassement
%       Entrez une valeur limite: 13
%       2
%       4
%       6
%       8
%       10
%       12
%       14
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Initialise le compteur.
compteur = 0;

% Saisit la valeur limite.
limite = input('Entrez une valeur limite: ');

while(compteur <= limite)
    % Incrémente de 2 à chaque itération.
    compteur = compteur + 2;
    
    % Affiche l'état du compteur.
    fprintf('%g\n', compteur);
end
