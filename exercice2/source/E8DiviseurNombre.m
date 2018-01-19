% Saisit un nombre et affiche tous les diviseurs de ce nombre. Note : La
% fonction mod permet d'aider à trouver si un nombre est un diviseur d'un
% autre.

% Vide la fenêtre de commande et la mémoire.
clc
clear

% Saisit le nombre entier.
saisi = input('Veuillez entrer un nombre entier: ');

% Début du message.
fprintf('Les diviseurs du nombre %g sont:\n',saisi);

% Parcours tous les nombre entre 1 et la saisi.
for i = 1:saisi
    % Test pour savoir si c'est une diviseur du nombre et l'affiche.
    if mod(saisi, i) == 0
        fprintf('%g\n', i);
    end
end

