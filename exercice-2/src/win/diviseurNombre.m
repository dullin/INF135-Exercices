% Saisit un nombre et affiche tous les diviseurs de ce nombre. Note : La
% fonction mod permet d'aider à trouver si un nombre est un diviseur d'un
% autre.
% 
% Example:
%   ::
%
%       >> diviseurNombre
%       Veuillez entrer un nombre entier: 14
%       Les diviseurs du nombre 14 sont:
%       1
%       2
%       7
%       14
%

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit le nombre entier.
saisie = input('Veuillez entrer un nombre entier: ');

% Début du message.
fprintf('Les diviseurs du nombre %g sont:\n',saisie);

% Parcours tous les nombre entre 1 et la saisi.
for i = 1:saisie
    % Test pour savoir si c'est une diviseur du nombre et l'affiche.
    if mod(saisie, i) == 0
        fprintf('%g\n', i);
    end
end

