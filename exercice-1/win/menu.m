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
% 
% Example:
%   ::
%
%       >> menu
%       Quel programme souhaitez-vous appeler?
%       1 - alloMonde
%       2 - horaire
%       3 - doubleDuNombre
%       4 - carreDuNombre
%       5 - coutAvecTaxes
%       6 - nomEtPrenom
%       7 - multiplieDeuxNombres
%       8 - positifNegatifNul
%       9 - minimumEntreDeux
%       10 - quadrantCartesien
%       11 - imcPersonne
%       12 - minimumEntreTrois
%       Choix : 1
%
%       Allo monde!
%

% Vide la fenêtre de commande et la mémoire.
clear
clc

% Affiche le menu. 
% Note : Les points de suspensions ne fonctionne pas habituellement à
% l'intérieur d'une chaine de caractères. Il faut utiliser les crochets [ ]
% avec les chaines délimités par des virgules pour avoir une chaine sur
% plusieurs lignes.
fprintf(['Quel programme souhaitez-vous appeler?\n', ...
        '1 - alloMonde\n', ...
        '2 - horaire\n', ...
        '3 - doubleDuNombre\n', ...
        '4 - carreDuNombre\n', ...
        '5 - coutAvecTaxes\n', ...
        '6 - nomEtPrenom\n' , ...
        '7 - multiplieDeuxNombres\n' , ...
        '8 - positifNegatifNul\n' , ...
        '9 - minimumEntreDeux\n' , ...
        '10 - quadrantCartesien\n' , ...
        '11 - imcPersonne\n' , ...
        '12 - minimumEntreTrois\n'] );

% Saisit la sélection de l'utilisateur.
choixUtilisateur = input('Choix : ');

% Appelle le bon script. Si la sélection est invalide, affiche un message
% d'erreur.
% Note : L'appel d'un script se fait par son nom sans extension .m
switch choixUtilisateur
    case 1
        alloMonde
    case 2
        horaire
    case 3
        doubleDuNombre
    case 4
        carreDuNombre
    case 5
        coutAvecTaxes
    case 6
        nomEtPrenom
    case 7  
        multiplieDeuxNombres
    case 8
        positifNegatifNul
    case 9
        minimumEntreDeux
    case 10
        quadrantCartesien
    case 11
        imcPersonne
    case 12
        minimumEntreTrois
    otherwise
        fprintf('Choix invalide.\n');
end
