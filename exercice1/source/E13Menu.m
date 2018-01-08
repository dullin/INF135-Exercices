% Affiche un menu qui demande à l'utilisateur de saisir un nombre qui
% représente le numéro de l'exercice du programme que celui-ci souhaite
% exécuter parmi les différents exercices réalisés jusqu'à présent.
% L'affichage du menu prends la forme suivante. La première ligne sera
% "Quel programme souhaitez-vous appeler?" suivi d'un saut de ligne.
% Ensuite, chaque ligne aura la forme de "NUMERO - NOMSCRIPT" suivi d'un
% saut de ligne. Si la valeur entrée est valide, le script appelle le
% programme demandé. Sinon, le script affiche un message d'erreur indiquant
% que la sélection est invalide. L'affichage du message d'erreur prends la
% forme "Choix invalide." suivi d'un saut de ligne.

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Affiche le menu. Note : Les points de suspensions ne fonctionne pas
% habituellement à l'intérieur d'une chaine de caractères. Il faut utiliser
% les crochets [ ] avec les chaines délimités par des virgules pour avoir
% une chaine sur plusieurs lignes.
fprintf(['Quel programme souhaitez-vous appeler?\n', ...
        '1 - E1AlloMonde\n', ...
        '2 - E2Horaire\n', ...
        '3 - E3DoubleDuNombre\n', ...
        '4 - E4CarreDuNombre\n', ...
        '5 - E5CoutAvecTaxes\n', ...
        '6 - E6NomEtPrenom\n' , ...
        '7 - E7MultiplieDeuxNombres\n' , ...
        '8 - E8PositifNegatifNul\n' , ...
        '9 - E9MinimumEntreDeux\n' , ...
        '10 - E10QuadrantCartesien\n' , ...
        '11 - E11IMC\n' , ...
        '12 - E12MinimumEntreTrois\n'] );

% Saisit de la sélection de l'utilisateur.
choix_utilisateur = input('Choix : ');

% Appelle le bon script. Si la sélection est invalide, affiche un message
% d'erreur.
% Note : L'appel d'un script se fait par son nom sans extension .m
switch choix_utilisateur
    case 1
        E1AlloMonde;
    case 2
        E2Horaire;
    case 3
        E3DoubleDuNombre;
    case 4
        E4CarreDuNombre
    case 5
        E5CoutAvecTaxes
    case 6
        E6NomEtPrenom
    case 7  
        E7MultiplieDeuxNombres
    case 8
        E8PositifNegatifNul
    case 9
        E9MinimumEntreDeux
    case 10
        E10QuadrantCartesien
    case 11
        E11IMC
    case 12
        E12MinimumEntreTrois
    otherwise
        fprintf('Choix invalide.\n');
end

