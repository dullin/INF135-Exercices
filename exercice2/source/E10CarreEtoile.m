%affiche un carre d'etoile a l'ecran.

% Vide la fenêtre de commande et la mémoire.
clc
clear

%On saisit la dimension du carre d'etoiles
dimension = input('Quel est la dimension du carre : ');

%On fait un boucle pour chaque ligne
for ii=1:dimension
    % place le nombre d'etoile sur une ligne
    for jj=1:dimension
        fprintf('*');
    end
    % saute une ligne
    fprintf('\n');
end
