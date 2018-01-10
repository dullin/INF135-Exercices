% Demande à l'utilisateur de saisir trois nombres. Le script affiche le
% plus petit des trois nombres. Le script doit aussi affiché un message si
% il y a eu égalité sur le plut petit nombre. L'affichage de base prends la forme
% "Plus petit : NOMBRE" suivi d'un saut de ligne. L'affichage de l'égalité
% prends la forme "Il y a eu égalité." suivi d'un saut de ligne.

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Saisit les trois nombres.
nb1 = input('Entrez un nombre: ');
nb2 = input('Entrez un autre nombre: ');
nb3 = input('Entrez un autre nombre: ');

% Par défaut, il n'y a pas d'égalité.
estEgal = false;

% Trouve le plus petit nombre entre le premier et deuxième.
if nb1 < nb2
    petit = nb1;
elseif nb1 > nb2
    petit = nb2;
else
    %Si égalité, sauvegarde pour affichage final.
    estEgal = true;
    petit = nb1;
end

% Compare le plus petit entre les deux premiers et le troisième.
if petit > nb3
    petit = nb3;
    % Si le troisième est plus petit, il n'y a pas d'égalité entre les deux
    % premiers nombre.
    estEgal = false;
elseif petit == nb3
    estEgal = true;
end

% Affiche le résultat et notre égalité possible.
fprintf('Plus petit : %g\n', petit)
if estEgal
    fprintf('Il y a eu égalité.\n')
end