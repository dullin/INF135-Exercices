%saisit un nombre entier au clavier et l'afficher a l'ecran un triangle
%compose d'etoiles dont la base et la hauteur correspondent a l'entier
%lu.

% Vide la fenêtre de commande et la mémoire.
clc
clear

% On saisit le nombre entier.
nb_etoiles = input('Veuillez entrer la taille du triangle d''�toiles: ');

% On affiche le triangle d'etoiles.
for ligne_id = 1:nb_etoiles

    % On affiche les etoiles d'une ligne. Par exemple, il y a trois toiles
    % a la troisieme ligne
    for etoile_id = 1:ligne_id
        fprintf('*');
    end;

    % On passe a l'autre ligne.
    fprintf('\n');
end;
